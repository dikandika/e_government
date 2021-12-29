<?php

namespace App\Http\Controllers;

use App\Models\Folder;
use App\Models\ServiceHistory;
use App\Models\ServiceStatus;
use Illuminate\Http\Request;
use DataTables;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ReportController extends Controller
{
    public function __construct()
    {
        // $this->middleware('auth');
    }

    private function isAdmin() {
        return auth()->user()->roles()->where('name', 'admin')->exists();
    }

    public function index()
    {
        if ($this->isAdmin()) {
            return view('dashboard.report.index');
        } else {
            return redirect()->route('dashboard.report.index');
        }
    }


    public function dataTable(Request $request)
    {
        if ($request->ajax()) {
            // TIPE_ID SKCK = 1
            $data = ServiceHistory::where('tipe_id', 1)->latest()->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $actionBtn = '<a href="/skck/' . $row->service_history_id . '" class="edit btn btn-success btn-sm">Show</a> 
                            <a href="/skck/' . $row->service_history_id . '/edit" class="edit btn btn-warning btn-sm">Edit</a> 
                            <button class="btn btn-danger btn-sm skck-delete-btn"atr="' . $row->service_history_id . '">Delete</button>';
                    // $actionBtn = '<div class="row">
                    //     <div class="col-md-12">
                    //         <a href="/skck/' . $row->service_history_id . '" class="edit btn btn-success btn-sm">Show</a> 
                    //         <a href="/skck/' . $row->service_history_id . '/edit" class="edit btn btn-warning btn-sm">Edit</a> 
                    //         <button class="btn btn-danger btn-sm skck-delete-btn"atr="' . $row->service_history_id . '">Delete</button>
                    //     </div>
                    // </div>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function dataChart(Request $request)
    {
        $results = [];
        if ($request->ajax()) {
            // $results = DB::table('service_history')
            // ->select(DB::raw('DATE_FORMAT(service_history.created_at, "%b") AS month, COUNT(service_history.nik) as total'))
            // ->whereRaw('service_history.created_at <= NOW() and service_history.created_at >= Date_add(Now(),interval - 12 month)')
            // ->groupByRaw('DATE_FORMAT(service_history.created_at, "%m-%Y")');

            $results = DB::select('SELECT DATE_FORMAT(created_at, "%b") AS month, 
            SUM(tipe_id = 1) as skck,
            SUM(tipe_id = 2) as keramaian,
            SUM(tipe_id = 3) as pengawalan,
            COUNT(tipe_id) as total
            FROM service_history
            WHERE created_at <= NOW()
            and created_at >= Date_add(Now(),interval - 12 month)
            GROUP BY DATE_FORMAT(created_at, "%m-%Y")');

            // $results = DB::select(DB::raw(`SELECT DATE_FORMAT(created_at, "%b") AS month, COUNT(nik) as total FROM service_history WHERE created_at <= NOW() and created_at >= Date_add(Now(),interval - 12 month) GROUP BY DATE_FORMAT(created_at, "%m-%Y")`));
        }

        return json_encode($results);
    }
}
