<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\SqrtRequest;
use Yajra\DataTables\DataTables;
use App\Models\Globals\History;
use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;

use Illuminate\Support\Facades\DB;



class DashboardController extends Controller
{
    protected $module =  'dashboard';
    protected $routes =  'dashboard';
    protected $views =  'dashboard';

    public function __construct()
    {
        $this->prepare([
            'module' => $this->module,
            'routes' => $this->routes,
            'route' => $this->routes,
            'views' => $this->views,
            'title' => 'Dashboard',
        ]);
    }

    

    public function index()
    {
        $this->prepare(
            [
                'tableStruct' => [
                    'table_url_1' => route('dashboard.grid'),
                    'datatable_1' => [
                        $this->makeColumn('name:num|label:#|sortable:false|width:20px'),
                        $this->makeColumn('name:tipe|label:Jenis|sortable:true|className:text-center'),
                        $this->makeColumn('name:activity|label:Keterangan|className:text-center'),
                        $this->makeColumn('name:created_at|label:Durasi|sortable:true|width:180px'),
                    ]
                ],
            ]
        );
        return $this->render($this->views.'.index');
    }

    public function grid()
    {
        $records = History::latest();

        return DataTables::of($records)
            ->editColumn(
                'num',
                function ($r) {
                    return request()->start;
                }
            )
            ->editColumn(
                'created_at',
                function ($r) {
                    return $r->duration;
                }
            )
            ->editColumn(
                'tipe',
                function ($r) {
                    return $r->tipe;
                }
            )
            ->editColumn(
                'activity',
                function ($r) {
                    return "Input=" . $r->input . "<br>Output=" . $r->output;
                }
            )
            ->rawColumns(
                [
                    'activity', 'tipe', 'created_at'
                ]
            )
            ->make(true);
    }

    public function result( SqrtRequest $request){
        $input = $request->input;
        $tipe = $request->tipe;
        if($tipe == 'sp sql'){
            // Mendefinisikan nama stored procedure
            $procedureName = 'sqrt_root_manual';

            // Mendefinisikan parameter jika diperlukan
            $parameters = [
                // Parameter 1
                'input' => $request->input
            ];

            // Memanggil stored procedure dengan Query Builder
            $results = DB::select("CALL $procedureName(?)", [$parameters['input']]);
            $output = sqrt($input);
            return redirect(route('index'))->with(compact('input', 'tipe', 'output'));
        }else{
            
        }
        

    }

}
