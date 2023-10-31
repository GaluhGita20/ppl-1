<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\SqrtRequest;
use App\Models\Globals\History;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use GuzzleHttp\Client;
use DataTables;



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
        $records = History::grid()->paginate(10);
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
        return $this->render($this->views.'.index')->with(compact('records'));
    }

    public function grid()
    {
        return DataTables::of(History::query())->make(true);
    }


    public function sqrtRoot()
    {
        $records = History::gridByUser()->paginate(8);
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
        return $this->render($this->views.'.sqrt-root')->with(compact('records'));
    }

    public function result( Request $request){
        $input = $request->input;
        $user_id = auth()->user()->id;
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
            $procedureName = 'sqrt_root_manual';
            $results = DB::select("SELECT $procedureName(?, ?)", [$input, $user_id]);
            $output = sqrt($input);
            return redirect(route('dashboard.sqrt-root'))->with(compact('input', 'tipe', 'output'));
        }else{
            $response = Http::withHeaders([
                'X-CSRF-TOKEN' => csrf_token()
            ])->post('https://api-ppl-square-root-dabe21a653e1.herokuapp.com/api/square-root', [
                'input' => $input, 'user_id' => auth()->user()->id
            ]);

            $output = sqrt($input);
            return redirect(route('dashboard.sqrt-root'))->with(compact('input', 'tipe', 'output'));
        }
        

    }

}
