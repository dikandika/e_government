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
use Mail;
use App\Models\EmailTemplate;
use Illuminate\Validation\ValidationException;

class PengawalanJalanController extends Controller
{
    public function __construct()
    {
        // $this->middleware('auth');
    }

    private function isAdmin() {
        $user = auth()->user();
        if ($user) {
            return $user->roles()->where('name', 'admin')->exists();
        }
        return false;
    }
    
    public function index()
    {
        if ($this->isAdmin()) {
            return view('dashboard.pengawalan_jalan.index');
        } else {
            return redirect()->route('pengawalan_jalan.home');
        }
    }


    public function dataTable(Request $request)
    {
        if ($request->ajax()) {
            // TIPE_ID PENGAWALAN JALAN = 2
            $data = ServiceHistory::where('tipe_id', 3)->latest()->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $actionBtn = '<div class="row">
                        <div class="col-md-12">
                            <a href="/pengawalan-jalan/' . $row->service_history_id . '" class="edit btn btn-success btn-sm">Show</a> 
                            <a href="/pengawalan-jalan/' . $row->service_history_id . '/edit" class="edit btn btn-warning btn-sm">Edit</a> 
                            <button class="btn btn-danger btn-sm pengawalan_jalan-delete-btn"atr="' . $row->service_history_id . '">Delete</button>
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

        return view('dashboard.pengawalan_jalan.create', ['statuses' => $statuses]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nik'             => 'required|numeric|digits:16',
            'nama'           => 'required',
            'alamat'         => 'required',
            'domisili'   => 'required',
            'no_hp'         => 'required|numeric',
            'email'         => 'required'
        ]);

        $nik = $request->input('nik');

        // validate if nik is exist
        $service = ServiceHistory::where('nik', '=', $nik)->where('tipe_id', '=', 3)->first();
        if ($service) {
            throw ValidationException::withMessages(['message' => 'Pengajuan SKCK dengan NIK ' . $nik . ' sudah ada']);
        }

        $user = auth()->user();

        $skckService = new ServiceHistory();
        // TIPE PENGAWALAN JALAN
        $skckService->tipe_id = 3;

        $skckService->status = 0;
        if ($user) {
            $skckService->update_by = $user->id;
        }

        $skckService->nik = $nik;
        $skckService->nama = $request->input('nama');
        $skckService->alamat = $request->input('alamat');
        $skckService->domisili = $request->input('domisili');
        $skckService->no_hp = $request->input('no_hp');
        $skckService->email = $request->input('email');

        // ID Folder PENGAWALAN JALAN = 10
        $skckFolder = Folder::where('id', '=', 10)->first();

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
                    $saveFilename = "Pengawalan Jalan-" . $attachment . "-" . $nik . "-" . date('YmdHis') . "-" . $oryginalName;
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

        $request->session()->flash('message', 'Pengawalan Jalan Created');

        if ($this->isAdmin()) {
            return redirect()->route('pengawalan_jalan.index');
        } else {
            return redirect()->route('pengawalan_jalan.guest.show', ['id' => $skckService->id]);
        }
    }

    public function show($id)
    {
        $service = ServiceHistory::with('update_by')->with('status')->where('service_history_id', '=', $id)->first()->toArray();

        return view('dashboard.pengawalan_jalan.show', ['service' => $service]);
    }

    public function edit($id)
    {
        $statuses = ServiceStatus::all();
        $service = ServiceHistory::with('update_by')->with('status')->where('service_history_id', '=', $id)->first()->toArray();

        return view('dashboard.pengawalan_jalan.edit', ['service' => $service, 'statuses' => $statuses]);
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'nik'             => 'required|numeric|digits:16',
            'nama'           => 'required',
            'alamat'         => 'required',
            'domisili'   => 'required',
            'no_hp'         => 'required|numeric',
            'email'         => 'required'
        ]);

        $nik = $request->input('nik');
        $user = auth()->user();

        $skckService = ServiceHistory::where('service_history_id', '=', $id)->first();

        $updatedData = [];


        if ($skckService) {
            // TIPE PENGAWALAN JALAN

            $updatedData["nik"] = $nik;
            $updatedData["nama"] = $request->input('nama');
            $updatedData["alamat"] = $request->input('alamat');
            $updatedData["domisili"] = $request->input('domisili');
            $updatedData["no_hp"] = $request->input('no_hp');
            $updatedData["email"] = $request->input('email');
            $updatedData["update_by"] = $user->id;
            $updatedData["status"] = $request->input('status');

            // ID Folder PENGAWALAN JALAN = 10
            $skckFolder = Folder::where('id', '=', 10)->first();

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
                        $saveFilename = "Pengawalan Jalan-" . $attachment . "-" . $nik . "-" . date('YmdHis') . "-" . $oryginalName;
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

            $request->session()->flash('message', 'Pengawalan Jalan Updated');
            return redirect()->route('pengawalan_jalan.index');
        } else {
            $request->session()->flash('message', 'Pengawalan Jalan Updated');
            return redirect()->route('pengawalan_jalan.edit', ['id'=>$id]);
        }
    }

    public function delete(Request $request){
        $validatedData = $request->validate([
            'id'            => 'required|numeric'
        ]);

        $id = $request->input('id');

        $result = ServiceHistory::where('service_history_id', $id)->delete();

        if ($result) {
            $request->session()->flash('message', 'Pengawalan Jalan Deleted');
        } else {
            $request->session()->flash('message', 'Pengawalan Jalan Delete Failed');
        }

        return redirect()->route('pengawalan_jalan.index'); 
    }

    public function home()
    {
        return view('dashboard.pengawalan_jalan.home');
    }

    public function search(Request $request)
    {
        $request->validate([
            'nik' => 'required|numeric|digits:16'
        ]);

        $nik = $request->input('nik');

        $service = ServiceHistory::with('update_by')->with('status')->where('nik', '=', $nik)->where('tipe_id', '=', 3)->first();
        if ($service) {
            return redirect()->route('pengawalan_jalan.guest.show', ['id' => $service->service_history_id]);
        } else {
            $request->session()->flash('alert', 'alert-danger');
            $request->session()->flash('message', 'Pengajuan Pengawalan Jalan dengan NIK ' .$nik. ' tidak ditemukan');
            return redirect()->route('pengawalan_jalan.home');
        }
    }

    public function process(Request $request)
    {
        $validatedData = $request->validate([
            'id'            => 'required|numeric'
        ]);

        $id = $request->input('id');
        $type = $request->input('type');

        $skckService = ServiceHistory::where('service_history_id', '=', $id)->first();
        $updatedData = [];
        $responseMessage = "";
        $email = "";


        if ($skckService) {
            $email = $skckService->email;

            if ($type == "approve") {
                $updatedData["status"] = 1;
                $responseMessage = "SKCK " . $skckService->nik . " Approved";

                $template = EmailTemplate::find(6);
                Mail::send([], [], function ($message) use ($email, $template)
                {
                    $message->to($email);
                    $message->subject($template->subject);
                    $message->setBody($template->content,'text/html');
                    $message->attach('https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf');
                });
            } else {
                $updatedData["status"] = 2;
                $responseMessage = "SKCK " . $skckService->nik . " Rejected";

                $template = EmailTemplate::find(7);
                Mail::send([], [], function ($message) use ($email, $template)
                {
                    $message->to($email);
                    $message->subject($template->subject);
                    $message->setBody($template->content,'text/html');
                });
            }

            $result = ServiceHistory::where('service_history_id', '=', $id)->update($updatedData);

            if ($result) {
                $request->session()->flash('message', $responseMessage);
            } else {
                $request->session()->flash('message', $responseMessage);
            }
        }

        

        return redirect()->route('pengawalan_jalan.index');
    }
}
