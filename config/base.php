<?php

return [
    'app' => [
        'name' => env('APP_NAME', 'BCA Multifinance'),
        'version' => 'v1.0.0',
        'copyright' => '2022 All Rights Reserved',
    ],

    'company' => [
        'key'       => 'bcamf',
        'name'      => 'PT BCA Multi Finance',
        'phone'     => '(021) 2964 8200',
        'address'   => 'Gedung WTC Mangga Dua Lantai 6 Blok CL 001 | Jl. Mangga Dua Raya No. 8 Jakarta Utara',
        'website'   => 'www.bcamf.co.id',
        'email'     => 'customercare@bcamf.co.id',
        'city'      => 'Jakarta'
    ],

    'logo' => [
        'favicon' => 'assets/media/logos/bca-favicon.ico',
        'auth' => 'assets/media/logos/logo-a.png',
        'aside' => 'assets/media/logos/logo-a.png',
        'print' => 'assets/media/logos/bca-logo-print.jpg',
        'barcode' => 'assets/media/logos/bca-logo-barcode.jpg',
    ],

    'mail' => [
        'send' => env('MAIL_SEND_STATUS', false),
        'logo' => 'https://www.bcamf.co.id/front_template/images/logo.png',
    ],
    
    'custom-menu' => true,
];