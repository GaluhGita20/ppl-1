<?php

namespace App\Exports\Training;

use App\Models\Training\TrainingAuditor;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class TrainingExport implements FromCollection, WithStyles
{
    public function thead()
    {
        return [
            'A' => 'No',
            'B' => 'Nama Auditor',
            'C' => 'Lembaga Pelatihan',
            'D' => 'Jenis Pelatihan',
            'E' => 'Tanggal Mulai',
            'F' => 'Tanggal Selesai',
            'G' => 'Dibuat Oleh',
            'H' => 'Dibuat Pada',
        ];
    }

    public function collection()
    {
        $data = [];
        $data[] = array_values($this->thead());
        $records = TrainingAuditor::grid()->filters()->get();
        foreach ($records as $i => $record) {
            $data += [
                ($i + 1),
                $record->user->name,
                $record->trainingInstitute->name,
                $record->trainingType->name,
                $record->date_start->format('d/m/Y'),
                $record->date_end->format('d/m/Y'),
                $record->creator->name ?? '[System]',
                $record->created_at->format('Y-m-d, H:i'),
            ];
        }

        return collect($data);
    }

    public function styles(Worksheet $sheet)
    {
        $sheet->getColumnDimension('A')->setWidth(10);
        $sheet->getColumnDimension('B')->setWidth(30);
        $sheet->getColumnDimension('C')->setWidth(80);
        $sheet->getColumnDimension('D')->setWidth(30);
        $sheet->getColumnDimension('E')->setWidth(30);
        $sheet->getColumnDimension('F')->setWidth(30);
        $sheet->getColumnDimension('G')->setWidth(30);
        $sheet->getColumnDimension('H')->setWidth(30);
        $sheet->getStyle('A1:H1')->getFont()->setBold(true);
        $sheet->getStyle('A1:H1')->getAlignment()->setHorizontal('center');
        $sheet->getStyle('A:H')->getAlignment()->setVertical('center');
        $sheet->getStyle('A:H')->getAlignment()->setWrapText(true);
    }
}
