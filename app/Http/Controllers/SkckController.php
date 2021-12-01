<?php

namespace App\Http\Controllers;

use App\Models\Folder;
use App\Models\ServiceHistory;
use App\Models\ServiceStatus;
use App\Models\TipeService;
use Illuminate\Http\Request;
use DataTables;
use Illuminate\Support\Facades\Log;

class SkckController extends Controller
{
    public function index()
    {
        return view('dashboard.skck.index');
    }


    public function getSkck(Request $request)
    {
        if ($request->ajax()) {
            $data = ServiceHistory::latest()->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-success btn-sm">Edit</a> <a href="javascript:void(0)" class="delete btn btn-danger btn-sm">Delete</a>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function create()
    {
        $statuses = ServiceStatus::all();
        $types = TipeService::all();
        return view('dashboard.skck.create', ['statuses' => $statuses, 'types' => $types]);
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
        Log::info("file_ktp", [$request->hasFile('file_ktp')]);
        Log::info("file_selfie_ktp", [$request->hasFile('file_selfie_ktp')]);
        Log::info("file_kk", [$request->hasFile('file_kk')]);

        $user = auth()->user();

        $skckService = new ServiceHistory();
        // TIPE SKCK
        $skckService->tipe_id = 1;
        
        $skckService->status = 1;
        $skckService->update_by = $user->id;

        $skckService->nik = $request->input('nik');
        $skckService->nama = $request->input('nama');
        $skckService->alamat = $request->input('alamat');
        $skckService->domisili = $request->input('domisili');
        $skckService->no_hp = $request->input('no_hp');
        $skckService->email = $request->input('email');

        // ID Folder SKCK = 8
        $skckFolder = Folder::where('id', '=', 8)->first();

        $attachmentNames = [
            'file_ktp',
            'file_selfie_ktp',
            'file_kk',
            'file_akte',
            'file_pass_foto',
            'file_suket',
        ];

        for ($i = 0; $i < count($attachmentNames); $i++) {
            $attachment = $attachmentNames[$i];

            if ($request->hasFile($attachment)) {
                $file = $request->file($attachment);
                $path = $file->path();
                $oryginalName = $file->getClientOriginalName();
                if (!empty($skckFolder)) {
                    $mediaResult = $skckFolder->addMedia($path)->usingFileName(date('YmdHis') . $oryginalName)->usingName($oryginalName)->toMediaCollection();

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
                    }
                }
            }
        }

        Log::info("VALIDATE", [$validatedData]);

        $skckService->save();

        // $user = auth()->user();
        // $note = new Notes();
        // $note->title     = $request->input('title');
        // $note->content   = $request->input('content');
        // $note->status_id = $request->input('status_id');
        // $note->note_type = $request->input('note_type');
        // $note->applies_to_date = $request->input('applies_to_date');
        // $note->users_id = $user->id;
        // $note->save();
        $request->session()->flash('message', 'Successfully created note');
        return redirect()->route('notes.index');
    }
}
