<?php

namespace App\Models\Globals;

use App\Models\Model;
use Carbon\Carbon;
use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;

class History extends Model
{
    protected $table = 'sys_history';

    protected $fillable = [
        'tipe',
        'input',
        'output',
        'duration'
    ];

    /** SCOPE **/
    public function scopeGrid($query)
    {
        return $query;
    }

    public function scopeFilters($query)
    {
        return $query;
    }

    // public function handleResult($request)
    // {
    //     $client = new Client();
    //     $url = 'http://localhost:8000/api/square-root';

    //     $number = $request->input('input');
    //     $response = Http::post(route('api.sqrt'), [
    //         'input' => $number, // Gantilah ini dengan nilai yang sesuai
    //     ]);

    //     try {
    //         $guzzleResponse = $client->get($url);

    //         if ($guzzleResponse->getStatusCode() === 200) {
    //             $data = json_decode($guzzleResponse->getBody(), true);
    //             $output = $data['data']['hasil'];
    //             $waktu = $data['data']['waktu'];

    //             // Lanjutkan dengan pengisian dan penyimpanan data jika diperlukan
    //             $this->fill([
    //                 'tipe' => 'API',
    //                 'input' => $number,
    //                 'output' => $output,
    //                 'duration' => $waktu,
    //             ]);
    //             $this->save();
    //         } else {
    //             // Tangani kesalahan jika status kode tidak sesuai
    //             return response()->json(['error' => 'Gagal mengambil data'], 500);
    //         }
    //     } catch (\Exception $e) {
    //         // Tangani kesalahan jika permintaan gagal
    //         return response()->json(['error' => $e->getMessage()], 500);
    //     }
    // }
}
