<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8" />
    <title>{{ config('app.name','Laravel 8.x') }} - @yield('title', 'Login')</title>
    <meta name="description" content="Welcome to {{ config('app.client') }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="base-url" content="{{ config('app.url') }}">
    <!--begin::Fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
    <!--end::Fonts-->
    <!--begin::Page Custom Styles(used by this page)-->
    <link href="{{ mix('assets/css/style.bundle.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/pages/login/classic/login-1.css') }}" rel="stylesheet" type="text/css" />
    <!--end::Page Custom Styles-->
    <!--begin::Global Theme Styles(used by all pages)-->
    <link href="{{ asset('assets/plugins/global/plugins.bundle.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/custom/prismjs/prismjs.bundle.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/style.bundle.css') }}" rel="stylesheet" type="text/css" />
    <!--end::Global Theme Styles-->
    <!--begin::Layout Themes(used by all pages)-->
    <link href="{{ asset('assets/css/themes/layout/header/base/light.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/themes/layout/header/menu/light.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/themes/layout/brand/dark.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/themes/layout/aside/dark.css') }}" rel="stylesheet" type="text/css" />
    <!--end::Layout Themes-->
    <link rel="shortcut icon" href="{{ asset('assets/media/logos/favicon-bjicon.png') }}" />
    {{-- <link rel="shortcut icon" href="{{ asset('assets/media/logos/favicon.ico') }}" /> --}}

    <style>
        .patern-box{
            width: 1030px;
            height: 1030px;
            border-radius: 60px;
            background-color: #fee9ea;
            position: absolute;
            top: -240px;
            left: -240px;
            transform: rotate(27deg);
        }
        body {
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 400% 400%;
            animation: gradient 15s ease infinite;
            height: 100vh;
        }

        @keyframes gradient {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

    </style>
</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading bg-white">
    <!--begin::Main-->
    <div class="d-flex flex-column flex-root align-items-center justify-content-center">
        <!--begin::Login-->
        <!-- <div class="patern-box"></div> -->
        <div class="login login-1 login-signin-on d-flex flex-column flex-lg-row" id="kt_login">
            <!--begin::Content-->
            <div class="d-flex flex-column flex-row-fluid position-relative p-7 overflow-hidden">
                <!--begin::Content header-->
                {{-- <div class="position-absolute top-0 right-0 text-right mt-5 mb-15 mb-lg-0 flex-column-auto justify-content-center py-5 px-10">
                    <span class="font-weight-bold text-dark-50">Dont have an account yet?</span>
                    <a href="{{ route('register') }}" class="font-weight-bold ml-2">Sign Up!</a>
                </div> --}}
                <!--end::Content header-->
                <!--begin::Content body-->
                <div class="d-flex flex-column-fluid flex-center mt-30 mt-lg-0">
                    <div class="card rounded-xl shadow">
                        <!--begin::Body-->
                        <div class="card-body p-0">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="d-flex">
                                        <div class="p-20">
                                            @yield('content-1')
                                        </div>
                                        <!-- <div class="d-none d-xl-flex">
                                            <img src="{{ asset('assets/images/bg-login.png') }}" alt="bank jatim e-mutasi">
                                        </div> -->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="d-flex">
                                        <div class="p-20">
                                            @yield('content-2')
                                        </div>
                                        <!-- <div class="d-none d-xl-flex">
                                            <img src="{{ asset('assets/images/bg-login.png') }}" alt="bank jatim e-mutasi">
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <!--end: Card Body-->
                    </div>
                </div>
                <!--end::Content body-->
                <!--begin::Content footer for mobile-->
                <div class="d-flex flex-column align-items-center p-5">
                    <div class="text-white font-weight-bold order-2 order-sm-1 my-2">BANK JATIM E-MUTASI - v1.0.0</div>
                    <div class="d-flex order-1 order-sm-2 my-2 text-white">
                        © 2022 All Rights Reserved
                    </div>
                </div>
                <!--end::Content footer for mobile-->
            </div>
            <!--end::Content-->
        </div>
        <!--end::Login-->
    </div>
    <!--end::Main-->
    <script src="{{ mix('assets/js/app.js') }}"></script>
    @stack('scripts')
</body>
<!--end::Body-->

</html>
