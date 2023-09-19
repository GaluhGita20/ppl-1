<?php

return [
    [
        'section' => 'NAVIGASI',
        'name' => 'navigasi',
        'perms' => 'dashboard',
    ],
    // Dashboard
    [
        'name' => 'dashboard',
        'perms' => 'dashboard',
        'title' => 'Dashboard',
        'icon' => 'fa fa-th-large',
        'url' => '/home',
    ],
    // Monitoring
    [
        'name' => 'monitoring',
        'perms' => 'monitoring',
        'title' => 'Monitoring',
        'icon' => 'fa fa-desktop',
        'url' => '/monitoring',
    ],
    // Audit Plan
    [
        'name' => 'rkia',
        'title' => 'Rencana Kerja',
        'icon' => 'far fa-calendar-alt',
        'submenu' => [
            [
                'name' => 'rkia_operation',
                'perms' => 'rkia.operation',
                'title' => 'Audit Rutin',
                'url' => '/rkia/operation',
            ],
            [
                'name' => 'rkia_special',
                'perms' => 'rkia.special',
                'title' => 'Ad-Hoc / Investigasi',
                'url' => '/rkia/special',
            ],
            [
                'name' => 'rkia_ict',
                'perms' => 'rkia.ict',
                'title' => 'ICT',
                'url' => '/rkia/ict',
            ],
            // [
            //     'name' => 'rkia_ext',
            //     'perms' => 'rkia.ext',
            //     'title' => 'Eksternal',
            //     'url' => '/rkia/ext',
            // ],
        ]
    ],
    // Persiapan Audit
    [
        'name' => 'preparation',
        'title' => 'Persiapan Audit',
        'icon' => 'fas fa-paper-plane',
        'submenu' => [
            [
                'name' => 'preparation_assignment',
                'perms' => 'preparation.assignment',
                'title' => 'Surat Penugasan',
                'url' => '/preparation/assignment',
            ],
            // [
            //     'name' => 'preparation_program',
            //     'perms' => 'preparation.program',
            //     'title' => 'Program Audit',
            //     'url' => '/preparation/program',
            // ],
            [
                'name' => 'preparation_apm',
                'perms' => 'preparation.apm',
                'title' => 'APM',
                'url' => '/preparation/apm',
            ],
            // [
            //     'name' => 'preparation_fee',
            //     'perms' => 'preparation.fee',
            //     'title' => 'Biaya Penugasan',
            //     'url' => '/preparation/fee',
            // ],
            [
                'name' => 'preparation_fee-auditor',
                'perms' => 'preparation.fee-auditor',
                'title' => 'Biaya Penugasan Auditor',
                'url' => '/preparation/fee-auditor',
            ],
            [
                'name' => 'preparation_doc-req',
                'perms' => 'preparation.doc-req',
                'title' => 'Permintaan Dokumen',
                'url' => '/preparation/doc-req',
            ],
            [
                'name' => 'preparation_doc-full',
                'perms' => 'preparation.doc-full',
                'title' => 'Pemenuhan Dokumen',
                'url' => '/preparation/doc-full',
            ],
        ]
    ],
    // Pelaksanaan Audit
    [
        'name' => 'conducting',
        'title' => 'Pelaksanaan Audit',
        'icon' => 'fa fa-tags',
        'submenu' => [
            [
                'name' => 'conducting_opening',
                'perms' => 'conducting.opening',
                'title' => 'Pertemuan Awal',
                'url' => '/conducting/opening',
            ],
            [
                'name' => 'conducting_sample',
                'perms' => 'conducting.sample',
                'title' => 'Kertas Kerja Pemeriksaan',
                'url' => '/conducting/sample',
            ],
            [
                'name' => 'conducting_feedback',
                'perms' => 'conducting.feedback',
                'title' => 'Tanggapan Auditee',
                'url' => '/conducting/feedback',
            ],
            [
                'name' => 'conducting_worksheet',
                'perms' => 'conducting.worksheet',
                'title' => 'ITD',
                'url' => '/conducting/worksheet',
            ],
            [
                'name' => 'conducting_closing',
                'perms' => 'conducting.closing',
                'title' => 'Pertemuan Akhir',
                'url' => '/conducting/closing',
            ],
        ]
    ],
    // Pelaporan Audit
    [
        'name' => 'reporting',
        'title' => 'Pelaporan Audit',
        'icon' => 'fas fa-bookmark',
        'submenu' => [
            [
                'name' => 'reporting_exiting',
                'perms' => 'reporting.exiting',
                'title' => 'Exit Meeting',
                'url' => '/reporting/exiting',
            ],
            [
                'name' => 'reporting_lha',
                'perms' => 'reporting.lha',
                'title' => 'LHA',
                'url' => '/reporting/lha',
            ],
            [
                'name' => 'reporting_dir-note',
                'perms' => 'reporting.dir-note',
                'title' => 'Catatan Direksi',
                'url' => '/reporting/dir-note',
            ],
        ]
    ],
    // Tindak Lanjut Audit
    [
        'name' => 'followup',
        'title' => 'Tindak Lanjut Audit',
        'icon' => 'fas fa-id-card',
        'submenu' => [
            [
                'name' => 'followup_followup-reg',
                'perms' => 'followup.followup-reg',
                'title' => 'Register',
                'url' => '/followup/followup-reg',
            ],
            [
                'name' => 'followup_reschedule',
                'perms' => 'followup.reschedule',
                'title' => 'Jadwal Ulang',
                'url' => '/followup/reschedule',
            ],
            [
                'name' => 'followup_followup-monitor',
                'perms' => 'followup.followup-monitor',
                'title' => 'Monitoring',
                'url' => '/followup/followup-monitor',
            ],
        ]
    ],
    // Survey Audtee
    [
        'name' => 'survey',
        'title' => 'Survey Kepuasan Audit',
        'icon' => 'fas fa-chart-pie',
        'submenu' => [
            [
                'name' => 'survey_survey-reg',
                'perms' => 'survey.survey-reg',
                'title' => 'Survey',
                'url' => '/survey/survey-reg',
            ],
            [
                'name' => 'survey_survey-recap',
                'perms' => 'survey.survey-recap',
                'title' => 'Hasil Survey',
                'url' => '/survey/survey-recap',
            ],
        ]
    ],
    // Audit External
    [
        'name' => 'extern',
        'title' => 'Audit Eksternal',
        'icon' => 'fas fa-clipboard-list',
        'submenu' => [
            [
                'name' => 'extern_extern-reg',
                'perms' => 'extern.extern-reg',
                'title' => 'Register',
                'url' => '/extern/extern-reg',
            ],
            [
                'name' => 'extern_extern-reschedule',
                'perms' => 'extern.extern-reschedule',
                'title' => 'Jadwal Ulang',
                'url' => '/extern/extern-reschedule',
            ],
            [
                'name' => 'extern_extern-followup',
                'perms' => 'extern.extern-followup',
                'title' => 'Tindak Lanjut',
                'url' => '/extern/extern-followup',
            ],
        ]
    ],
    // Rapat
    [
        'name' => 'meeting',
        'title' => 'Rapat',
        'icon' => 'fa fa-gavel',
        'submenu' => [
            [
                'name' => 'meeting_meeting-invit',
                'perms' => 'meeting.meeting-invit',
                'title' => 'Undangan Rapat',
                'url' => '/meeting/meeting-invit',
            ],
            [
                'name' => 'meeting_meeting-recap',
                'perms' => 'meeting.meeting-recap',
                'title' => 'Risalah Rapat',
                'url' => '/meeting/meeting-recap',
            ],
        ]
    ],
    // Pelatihan
    [
        'name' => 'training_training-auditor',
        'perms' => 'training.training-auditor',
        'title' => 'Pelatihan Auditor',
        'icon' => 'fas fa-swatchbook',
        'url' => '/training/training-auditor',
    ],

    [
        'name' => 'report',
        'perms' => 'report',
        'title' => 'Pelaporan',
        'icon' => 'fa fa-print',
        'submenu' => [
            [
                'name' => 'report_program-kerja',
                'perms' => 'report',
                'title' => 'RKIA',
                'url' => '/report/program-kerja',
            ],
            [
                'name' => 'report_persiapan-audit',
                'perms' => 'report',
                'title' => 'Persiapan Audit',
                'url' => '/report/persiapan-audit',
            ],
            [
                'name' => 'report_pelaksanaan-audit',
                'perms' => 'report',
                'title' => 'Pelaksanaan Audit',
                'url' => '/report/pelaksanaan-audit',
            ],
            [
                'name' => 'report_pelaporan-audit',
                'perms' => 'report',
                'title' => 'Pelaporan Audit',
                'url' => '/report/pelaporan-audit',
            ],
            [
                'name' => 'report_followup',
                'perms' => 'report',
                'title' => 'Tindak Lanjut Audit',
                'url' => '/report/followup',
            ],
            [
                'name' => 'report_survey-kepuasan',
                'perms' => 'report',
                'title' => 'Survey Kepuasan',
                'url' => '/report/survey',
            ],
            [
                'name' => 'report_audit-eksternal',
                'perms' => 'report',
                'title' => 'Audit Eksternal',
                'url' => '/report/external',
            ],
            // [
            //     'name' => 'report_rapat',
            //     'perms' => 'report',
            //     'title' => 'Rapat',
            //     'url' => '/report/rapat',
            // ],
            // [
            //     'name' => 'report_pelatihan-auditor',
            //     'perms' => 'report',
            //     'title' => 'Pelatihan Auditor',
            //     'url' => '/report/pelatihan-auditor',
            // ],
        ]
    ],

    // Admin Console
    [
        'section' => 'ADMIN KONSOL',
        'name' => 'console_admin',
    ],
    [
        'name' => 'master',
        'perms' => 'master',
        'title' => 'Data Master',
        'icon' => 'fa fa-database',
        'submenu' => [
            [
                'name' => 'master_org',
                'title' => 'Struktur Organisasi',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_org_root',
                        'title' => 'Root',
                        'url' => '/master/org/root'
                    ],
                    [
                        'name' => 'master_org_boc',
                        'title' => 'Komisaris',
                        'url' => '/master/org/boc',
                    ],
                    [
                        'name' => 'master_org_bod',
                        'title' => 'Direksi',
                        'url' => '/master/org/bod',
                    ],
                    [
                        'name' => 'master_org_division',
                        'title' => 'Divisi',
                        'url' => '/master/org/division',
                    ],
                    [
                        'name' => 'master_org_department',
                        'title' => 'Department',
                        'url' => '/master/org/department',
                    ],
                    [
                        'name' => 'master_org_branch',
                        'title' => 'Cabang',
                        'url' => '/master/org/branch',
                    ],
                    [
                        'name' => 'master_org_subbranch',
                        'title' => 'Dealer',
                        'url' => '/master/org/subbranch',
                    ],
                    // [
                    //     'name' => 'master_org_cash',
                    //     'title' => 'Kantor Kas',
                    //     'url' => '/master/org/cash',
                    // ],
                    // [
                    //     'name' => 'master_org_payment',
                    //     'title' => 'Payment Point',
                    //     'url' => '/master/org/payment',
                    // ],
                    [
                        'name' => 'master_org_group',
                        'title' => 'Grup Lainnya',
                        'url' => '/master/org/group',
                    ],
                    [
                        'name' => 'master_org_position',
                        'title' => 'Jabatan',
                        'url' => '/master/org/position',
                    ],
                ]
            ],
            [
                'name' => 'Geografis',
                'title' => 'Geografis',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_province',
                        'title' => 'Provinsi',
                        'url' => '/master/geografis/province'
                    ],
                    [
                        'name' => 'master_city',
                        'title' => 'Kota / Kabupaten',
                        'url' => '/master/geografis/city'
                    ],
                    [
                        'name' => 'master_district',
                        'title' => 'Kecamatan',
                        'url' => '/master/geografis/district'
                    ],
                ]
            ],
            [
                'name' => 'master_ict',
                'title' => 'Objek ICT',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_ict-type',
                        'title' => 'Tipe Objek ICT',
                        'url' => '/master/ict/ict-type',
                    ],
                    [
                        'name' => 'master_ict-object',
                        'title' => 'Objek Audit ICT',
                        'url' => '/master/ict/ict-object',
                    ],
                ]
            ],
            // [
            //     'name' => 'master_ext',
            //     'title' => 'Objek Eksternal',
            //     'url' => '',
            //     'submenu' => [
            //         [
            //             'name' => 'master_ext-type',
            //             'title' => 'Tipe Objek Eksternal',
            //             'url' => '/master/ext/ext-type',
            //         ],
            //         [
            //             'name' => 'master_ext-object',
            //             'title' => 'Objek Audit Eksternal',
            //             'url' => '/master/ext/ext-object',
            //         ],
            //     ]
            // ],
            [
                'name' => 'master_letter',
                'title' => 'No Surat',
                'url' => '/master/letter',
            ],
            [
                'name' => 'master_doc',
                'title' => 'Dokumen',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_aspect',
                        'title' => 'Aspek Audit',
                        'url' => '/master/aspect',
                    ],
                    [
                        'name' => 'master_procedure',
                        'title' => 'Prosedur Audit',
                        'url' => '/master/procedure',
                    ],
                    [
                        'name' => 'master_document-item',
                        'title' => 'Item Dokumen',
                        'url' => '/master/document-item',
                    ],
                ]
            ],
            [
                'name' => 'master_cut-off',
                'title' => 'Audit',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_audit-rating',
                        'title' => 'Audit Rating',
                        'url' => '/master/audit-rating',
                    ],
                    [
                        'name' => 'master_level-temuan',
                        'title' => 'Level Temuan',
                        'url' => '/master/level-temuan',
                    ],
                    [
                        'name' => 'master_last-audit',
                        'title' => 'Audit Terakhir',
                        'url' => '/master/last-audit',
                    ],
                ]
            ],
            [
                'name' => 'master_risk',
                'title' => 'Resiko',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_risk-rating',
                        'title' => 'Tingkat Resiko',
                        'url' => '/master/risk-rating',
                    ],
                    [
                        'name' => 'master_risk-assessment',
                        'title' => 'Penilaian Resiko',
                        'url' => '/master/risk-assessment',
                    ],
                ]
            ],
            [
                'name' => 'master_fee',
                'title' => 'Biaya Penugasan',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_fee_bank-account',
                        'title' => 'Rekening Bank',
                        'url' => '/master/fee/bank-account',
                    ],
                    [
                        'name' => 'master_fee_cost-component',
                        'title' => 'Komponen Biaya',
                        'url' => '/master/fee/cost-component',
                    ],
                    [
                        'name' => 'master_fee_eselon',
                        'title' => 'Eselon',
                        'url' => '/master/fee/eselon',
                    ],
                    [
                        'name' => 'master_fee_transport-type',
                        'title' => 'Jenis Transportasi',
                        'url' => '/master/fee/transport-type',
                    ],
                    [
                        'name' => 'master_fee_transport-class',
                        'title' => 'Kelas Transportasi',
                        'url' => '/master/fee/transport-class',
                    ],
                    [
                        'name' => 'master_fee_document-dinas',
                        'title' => 'Dokumen Dinas',
                        'url' => '/master/fee/document-dinas',
                    ],
                ]
            ],
            [
                'name' => 'master_training',
                'title' => 'Training',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_training_training-type',
                        'title' => 'Jenis Training',
                        'url' => '/master/training/training-type',
                    ],
                    [
                        'name' => 'master_training_training-institute',
                        'title' => 'Lembaga Training',
                        'url' => '/master/training/training-institute',
                    ],
                ]
            ],
            [
                'name' => 'master_surveys',
                'title' => 'Survey',
                'url' => '',
                'submenu' => [
                    [
                        'name' => 'master_survey_category',
                        'title' => 'Kategori Pernyataan',
                        'url' => '/master/survey-category',
                    ],
                    [
                        'name' => 'master_survey',
                        'title' => 'Pernyataan Survey',
                        'url' => '/master/survey',
                    ],
                ]
            ],
            [
                'name' => 'master_extern_extern-instance',
                'title' => 'Auditor Eksternal',
                'url' => '/master/extern/extern-instance',
            ],
        ]
    ],
    [
        'name' => 'setting',
        'perms' => 'setting',
        'title' => 'Pengaturan Umum',
        'icon' => 'fa fa-cogs',
        'submenu' => [
            [
                'name' => 'setting_role',
                'title' => 'Hak Akses',
                'url' => '/setting/role',
            ],
            [
                'name' => 'setting_flow',
                'title' => 'Flow Approval',
                'url' => '/setting/flow',
            ],
            [
                'name' => 'setting_user',
                'title' => 'Manajemen User',
                'url' => '/setting/user',
            ],
            [
                'name' => 'setting_activity',
                'title' => 'Audit Trail',
                'url' => '/setting/activity',
            ],
        ]
    ],
];
