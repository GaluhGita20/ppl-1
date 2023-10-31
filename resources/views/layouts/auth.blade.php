@if (!request()->header('Base-Replace-Content'))
    <!DOCTYPE html>
    <html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="utf-8" />
        <title>{{ !empty($title) ? $title . ' | ' . config('app.name') : config('app.name') }}</title>
        <meta name="debug" content="{{ config('app.debug') }}">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta name="base-url" content="{{ url('/') }}">
        <meta name="replace" content="1">
        <meta name="author" content="PT Pragma Informatika" />
        <meta name="description" content="Aplication by PT Pragma Informatika" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <link rel="stylesheet" href="{{ (('/assets/css/plugins.bundle.css')) }}">
        <link rel="stylesheet" href="{{ (('/assets/css/theme.bundle.css')) }}">
        <link rel="stylesheet" href="{{ (('/assets/css/theme.skins.bundle.css')) }}">

        <script src="{{ (('/assets/js/plugins.bundle.js')) }}"></script>

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

    <body id="kt_body"
        class="header-fixed header-mobile-fixed
        subheader-enabled subheader-fixed
        aside-enabled aside-fixed
        aside-minimize-hoverable
        {{ !empty($sidebarMini) ? 'aside-minimize' : '' }}
        page-loading">

        <div class="d-flex flex-column flex-root align-items-center justify-content-center">
            <!--begin::Login-->
            <!-- <div class="patern-box"></div> -->
            <div class="login login-1 login-signin-on d-flex flex-column flex-lg-row" id="kt_login" style="width:100%;">
                <!--begin::Content-->
                <div class="d-flex flex-column flex-row-fluid position-relative p-7 overflow-hidden" style="width:100%;">
                    <!--begin::Content body-->
                    <div class="d-flex flex-column-fluid flex-center mt-30 mt-lg-0" style="width:100%;">
                        <div class="card rounded-xl shadow" style="width:90%;">
                            <!--begin::Body-->
                            <div class="card-body p-0">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="p-20">
                                            @yield('content')
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <!--end: Card Body-->
                        </div>
                    </div>
                    <div class="align-items-center p-5">
                            <div class="text-white font-weight-bold order-2 order-sm-1 my-2">QC IT DEV - v1.0.0</div>
                            <div class="d-flex order-1 order-sm-2 my-2 text-white">
                                © 2022 All Rights Reserved
                            </div>
                        </div>
                </div>
                <!--end::Content-->
            </div>
            <!--end::Login-->
        </div>
        <script src="{{ '/assets/js/base.bundle.js' }}"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
        @stack('scripts')
    </body>

    </html>
@else
    <div id="content-page" class="content-page" data-sidebar-mini="{{ $sidebarMini ?? 0 }}"
        data-module="{{ $module ?? '' }}">
        @stack('styles')
        @yield('content')
       
        @stack('scripts')
    </div>
@endif
