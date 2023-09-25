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

    public function result( Request $request){
        $input = $request->input;
        $tipe = $request->tipe;
        $message = true;
        // validasi 
        if(!is_numeric($input)){
            $message_error = "Input angka bukan bertipe numeric!";
        }else if($input < 0){
            $message_error = "Input angka harus >= 0!";
        }else{
            $message_error = NULL;
            $message = false;
        }
        if($message){
            $output = NULL;
            return redirect(route('index'))->with(compact('input', 'tipe', 'output', 'message', 'message_error'));
        }
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
            $output = History::latest()->first()->output;
            return redirect(route('index'))->with(compact('input', 'tipe', 'output'));
        }else{
            $response = Http::withHeaders([
                'X-CSRF-TOKEN' => csrf_token()
            ])->post('http://127.0.0.1:9000/api/square-root', [
                'input' => $input
            ]);

            $output = History::latest()->first()->output;
            return redirect(route('index'))->with(compact('input', 'tipe', 'output'));
        }
        

    }

}
