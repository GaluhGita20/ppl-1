<?php

namespace App\Imports\Master;

use App\Models\Master\Ict\IctType;
use App\Models\Master\Org\OrgStruct;
use App\Models\Master\Risk\RiskAssessment;
use App\Models\Master\Risk\RiskRating;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;

class RiskAssessmentImport implements ToCollection, WithStartRow
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $collection)
    {
        // Validasi Template
        $row = $collection->first();
        if (empty($row[1]) || strtoupper($row[1]) != strtoupper('Tahun')) {
            throw new \Exception("MESSAGE--File tidak tidak sesuai dengan template terbaru. Silahkan download template kembali!", 1);
        }

        // Maping Data
        foreach ($collection as $rw => $row) {
            if ($rw == 0) continue;

            $year           = trim($row[1] ?? '');
            $category       = trim($row[2] ?? '');
            $objectType     = strtolower(trim($row[3] ?? ''));
            $objectName     = trim($row[4] ?? '');
            $key            = trim($row[5] ?? '');
            $description    = trim($row[6] ?? '');
            $riskRatingName = trim($row[7] ?? '');
            $source         = trim($row[8] ?? '');

            $formatted_row = [
                'year'          => $year,
                'category'      => $category,
                'objectType'    => $objectType,
                'objectName'    => $objectName,
                'key'           => $key,
                'description'   => $description,
                'riskRatingName' => $riskRatingName,
                'source'        => $source,
            ];

            if (!empty($year) && !empty($category) && !empty($objectType) && !empty($objectName) && !empty($key) && !empty($description) && !empty($riskRatingName) && !empty($source)) {
                // Check Category
                if (in_array(strtolower($category), ['operation', 'operasional', 'audit rutin'])) {
                    $category = 'operation';
                } elseif (in_array(strtolower($category), ['special', 'khusus','investigasi'])) {
                    $category = 'special';
                } elseif (in_array(strtolower($category), ['ict'])) {
                    $category = 'ict';
                }

                $riskRating = RiskRating::firstOrNew(['name'=>$riskRatingName]);
                $riskRating->description = $riskRating->description??$riskRatingName;
                $riskRating->save();

                // Check Object Audit
                $object = OrgStruct::where('name', $objectName);
                if (in_array($category, ['operation', 'special'])) {
                    if (in_array($objectType, ['division', 'divisi'])) {
                        $object = $object->division();
                    } elseif (in_array($objectType, ['department', 'departemen'])) {
                        $object = $object->department();
                    } elseif (in_array($objectType, ['branch', 'cabang', 'Area Office', 'area office'])) {
                        $object = $object->branch();
                    } else {
                        $object->whereNull('id');
                    }

                    if ($object = $object->first()) {
                        $record = RiskAssessment::firstOrCreate(
                            [
                                'year' => $year,
                                'category' => $category,
                                'object_id' => $object->id,
                                'key' => $key,
                            ]
                        );
                        $detail = $record->details()->firstOrNew(
                            [
                                'description' => $description,
                            ]
                        );
                        $detail->fill(
                            [
                                'source' => $source,
                                'risk_rating_id' => $riskRating->id,
                            ]
                        );
                        $detail->save();
                    }
                } elseif (in_array($category, ['ict'])) {
                    if ($ictType = IctType::where('name', $objectType)->first()) {
                        if ($ictObject = $ictType->ictObject()->where('name', $objectName)->first()) {
                            $record = RiskAssessment::firstOrCreate(
                                [
                                    'year' => $year,
                                    'category' => $category,
                                    'object_id' => $object->id,
                                    'key' => $key,
                                ]
                            );
                            $detail = $record->details()
                                ->firstOrNew(
                                    [
                                        'description' => $description,
                                    ]
                                );
                            $detail->fill(
                                [
                                    'source' => $source,
                                    'risk_rating_id' => $riskRating->id,
                                ]
                            );
                            $detail->save();
                        }
                    }
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
