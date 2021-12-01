<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Services\FormService;
use App\Models\Form;
use App\Models\FormField;
use App\Services\RolesService;
use Illuminate\View\View;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //var_dump(DB::getSchemaBuilder()->getColumnListing('model'));

        // return View::make('dashboard.form.index');
        return view('dashboard.form.index', ['forms' => Form::all()]);
    }
}
