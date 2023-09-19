<?php

namespace App\Imports\Master;

use App\Models\Master\Survey\Survey;
use App\Models\Master\Survey\SurveyCategory;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;

class SurveyImport implements ToCollection, WithStartRow
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $collection)
    {
        // Validasi Template
        $row = $collection->first();
        if (empty($row[0]) || strtoupper($row[0]) != strtoupper('Versi')) {
            throw new \Exception("MESSAGE--File tidak tidak sesuai dengan template terbaru. Silahkan download template kembali!", 1);
        }

        // Maping Data
        $version = null;
        $description = null;
        foreach ($collection as $rw => $row) 
        {
            if ($rw == 0) {
                $version = trim($row[1] ?? null);
            } elseif ($rw == 1) {
                $description = trim($row[1] ?? null);
            } else {
                break;
            }
        }

        if (!is_null($version) && !is_null($description)) {
            $survey = Survey::where('version', $version)->first();
            if (!$survey) {
                $survey = new Survey;
                $survey->status = 'draft';
                $survey->version = $survey->getNewVersion();
            }
            $survey->description = $description;
            $survey->save();

            foreach ($collection as $rw => $row) 
            {
                if ($rw <= 3) continue;
                
                $categoryName     = trim($row[1] ?? '');
                $statement     = trim($row[2] ?? '');

                if (!empty($categoryName) && !empty($statement)) {
                    $category = SurveyCategory::firstOrCreate(['name' => $categoryName]);
                    $survey->statements()->firstOrCreate([
                        'category_id' => $category->id,
                        'statement' => $statement
                    ]);
                }
            }
        }

        return $collection;
    }

    /**
     * @return int
     */
    public function startRow(): int
    {
        return 1;
    }
}
