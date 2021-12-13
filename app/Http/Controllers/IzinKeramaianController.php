<?php

namespace App\Http\Controllers;

use App\Models\Folder;
use App\Models\ServiceHistory;
use App\Models\ServiceStatus;
use App\Models\TipeService;
use Illuminate\Http\Request;
use DataTables;
use Illuminate\Contracts\Session\Session;
use Illuminate\Support\Facades\Log;

class IzinKeramaianController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    private function isAdmin() {
        return auth()->user()->roles()->where('name', 'admin')->exists();
    }
    
    public function index()
    {
        if ($this->isAdmin()) {
            return view('dashboard.izin_keramaian.index');
        } else {
            return redirect()->route('izin_keramaian.create');
        }
    }


    public function dataTable(Request $request)
    {
        if ($request->ajax()) {
            // TIPE_ID IZIN KERAMAIAN = 2
            $data = ServiceHistory::where('tipe_id', 2)->latest()->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $actionBtn = '<div class="row">
                        <div class="col-md-12">
                            <a href="/izin-keramaian/' . $row->service_history_id . '" class="edit btn btn-success btn-sm">Show</a> 
                            <a href="/izin-keramaian/' . $row->service_history_id . '/edit" class="edit btn btn-warning btn-sm">Edit</a> 
                            <button class="btn btn-danger btn-sm izin_keramaian-delete-btn"atr="' . $row->service_history_id . '">Delete</button>
                        </div>
                    </div>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function create()
    {
        $statuses = ServiceStatus::all();

        return view('dashboard.izin_keramaian.create', ['statuses' => $statuses]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nik'             => 'required|min:16|max:20',
            'nama'           => 'required',
            'alamat'         => 'required',
            'domisili'   => 'required',
            'no_hp'         => 'required',
            'email'         => 'required'
        ]);

        $nik = $request->input('nik');
        $user = auth()->user();

        $skckService = new ServiceHistory();
        // TIPE Izin Keramaian
        $skckService->tipe_id = 2;

        $skckService->status = 1;
        $skckService->update_by = $user->id;

        $skckService->nik = $nik;
        $skckService->nama = $request->input('nama');
        $skckService->alamat = $request->input('alamat');
        $skckService->domisili = $request->input('domisili');
        $skckService->no_hp = $request->input('no_hp');
        $skckService->email = $request->input('email');

        // ID Folder Izin Keramaian = 9
        $skckFolder = Folder::where('id', '=', 9)->first();

        $attachmentNames = [
            'file_ktp',
            'file_selfie_ktp',
            'file_kk',
            'file_akte',
            'file_pass_foto',
            'file_suket',
            'file_surat_permohonan'
        ];

        for ($i = 0; $i < count($attachmentNames); $i++) {
            $attachment = $attachmentNames[$i];

            if ($request->hasFile($attachment)) {
                $file = $request->file($attachment);
                $path = $file->path();
                $oryginalName = $file->getClientOriginalName();
                if (!empty($skckFolder)) {
                    $saveFilename = "Izin Keramaian-" . $attachment . "-" . $nik . "-" . date('YmdHis') . "-" . $oryginalName;
                    $mediaResult = $skckFolder->addMedia($path)->usingFileName($saveFilename)->usingName($saveFilename)->toMediaCollection();

                    if ($attachment == 'file_ktp') {
                        $skckService->url_ktp = $mediaResult->getUrl();
                    } elseif ($attachment == 'file_selfie_ktp') {
                        $skckService->url_selfie = $mediaResult->getUrl();
                    } elseif ($attachment == 'file_kk') {
                        $skckService->url_kk = $mediaResult->getUrl();
                    } elseif ($attachment == 'file_akte') {
                        $skckService->url_akta_lahir = $mediaResult->getUrl();
                    } elseif ($attachment == 'file_pass_foto') {
                        $skckService->url_pass_foto = $mediaResult->getUrl();
                    } elseif ($attachment == 'file_suket') {
                        $skckService->url_suket = $mediaResult->getUrl();
                    } elseif ($attachment == 'file_surat_permohonan') {
                        $skckService->url_suratpermohonan = $mediaResult->getUrl();
                    }
                }
            }
        }

        $skckService->save();

        $request->session()->flash('message', 'Izin Keramaian Created');

        if ($this->isAdmin()) {
            return redirect()->route('izin_keramaian.index');
        } else {
            return redirect()->route('izin_keramaian.create');
        }
    }

    public function show($id)
    {
        $service = ServiceHistory::with('update_by')->with('status')->where('service_history_id', '=', $id)->first()->toArray();

        return view('dashboard.izin_keramaian.show', ['service' => $service]);
    }

    public function edit($id)
    {
        $statuses = ServiceStatus::all();
        $service = ServiceHistory::with('update_by')->with('status')->where('service_history_id', '=', $id)->first()->toArray();

        return view('dashboard.izin_keramaian.edit', ['service' => $service, 'statuses' => $statuses]);
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'nik'             => 'required|min:16|max:20',
            'nama'           => 'required',
            'alamat'         => 'required',
            'domisili'   => 'required',
            'no_hp'         => 'required',
            'email'         => 'required'
        ]);

        $nik = $request->input('nik');
        $user = auth()->user();

        $skckService = ServiceHistory::where('service_history_id', '=', $id)->first();

        $updatedData = [];


        if ($skckService) {
            // TIPE Izin Keramaian

            $updatedData["nik"] = $nik;
            $updatedData["nama"] = $request->input('nama');
            $updatedData["alamat"] = $request->input('alamat');
            $updatedData["domisili"] = $request->input('domisili');
            $updatedData["no_hp"] = $request->input('no_hp');
            $updatedData["email"] = $request->input('email');
            $updatedData["update_by"] = $user->id;
            $updatedData["status"] = $request->input('status');

            // ID Folder Izin Keramaian = 9
            $skckFolder = Folder::where('id', '=', 9)->first();

            $attachmentNames = [
                'file_ktp',
                'file_selfie_ktp',
                'file_kk',
                'file_akte',
                'file_pass_foto',
                'file_suket',
                'file_surat_permohonan'
            ];

            for ($i = 0; $i < count($attachmentNames); $i++) {
                $attachment = $attachmentNames[$i];

                if ($request->hasFile($attachment)) {
                    $file = $request->file($attachment);
                    $path = $file->path();
                    $oryginalName = $file->getClientOriginalName();
                    if (!empty($skckFolder)) {
                        $saveFilename = "Izin Keramaian-" . $attachment . "-" . $nik . "-" . date('YmdHis') . "-" . $oryginalName;
                        $mediaResult = $skckFolder->addMedia($path)->usingFileName($saveFilename)->usingName($oryginalName)->toMediaCollection();

                        if ($attachment == 'file_ktp') {
                            $updatedData["url_ktp"] = $mediaResult->getUrl();
                        } elseif ($attachment == 'file_selfie_ktp') {
                            $updatedData["url_selfie"] = $mediaResult->getUrl();
                        } elseif ($attachment == 'file_kk') {
                            $updatedData["url_kk"] = $mediaResult->getUrl();
                        } elseif ($attachment == 'file_akte') {
                            $updatedData["url_akta_lahir"] = $mediaResult->getUrl();
                        } elseif ($attachment == 'file_pass_foto') {
                            $updatedData["url_pass_foto"] = $mediaResult->getUrl();
                        } elseif ($attachment == 'file_suket') {
                            $updatedData["url_suket"] = $mediaResult->getUrl();
                        } elseif ($attachment == 'file_surat_permohonan') {
                            $updatedData["url_suratpermohonan"] = $mediaResult->getUrl();
                        }
                    }
                }
            }

            Log::info("UPDATED DATA", [$updatedData]);

            $result = ServiceHistory::where('service_history_id', '=', $id)->update($updatedData);

            $request->session()->flash('message', 'Izin Keramaian Updated');
            return redirect()->route('izin_keramaian.index');
        } else {
            $request->session()->flash('message', 'Izin Keramaian Updated');
            return redirect()->route('izin_keramaian.edit', ['id'=>$id]);
        }
    }

    public function delete(Request $request){
        $validatedData = $request->validate([
            'id'            => 'required|numeric'
        ]);

        $id = $request->input('id');

        $result = ServiceHistory::where('service_history_id', $id)->delete();

        if ($result) {
            $request->session()->flash('message', 'Izin Keramaian Deleted');
        } else {
            $request->session()->flash('message', 'Izin Keramaian Delete Failed');
        }

        return redirect()->route('izin_keramaian.index'); 
    }
}
