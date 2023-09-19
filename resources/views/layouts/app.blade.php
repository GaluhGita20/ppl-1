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

        <link rel="shortcut icon" href="{{ asset(config('base.logo.favicon')) }}" />
        <link rel="stylesheet" href="{{ ('/assets/css/fonts/poppins/all.css') }}">
        <link rel="stylesheet" href="{{ (('/assets/css/plugins.bundle.css')) }}">
        <link rel="stylesheet" href="{{ (('/assets/css/theme.bundle.css')) }}">
        <link rel="stylesheet" href="{{ (('/assets/css/theme.skins.bundle.css')) }}">
        <link rel="stylesheet" href="{{ (('/assets/css/base.bundle.css')) }}">
        <link rel="stylesheet" href="{{ (('/assets/css/modules.bundle.css')) }}">

        <script src="{{ (('/assets/js/plugins.bundle.js')) }}"></script>
    </head>

    <body id="kt_body"
        class="header-fixed header-mobile-fixed
        subheader-enabled subheader-fixed
        aside-enabled aside-fixed
        aside-minimize-hoverable
        {{ !empty($sidebarMini) ? 'aside-minimize' : '' }}
        page-loading">

        <div class="no-body-clear page-loader page-loader-default fade-out">
            <div class="blockui">
                <span>Please wait...</span>
                <span>
                    <div class="spinner spinner-primary"></div>
                </span>
            </div>
        </div>

        <div id="kt_header_mobile" class="no-body-clear header-mobile align-items-center header-mobile-fixed">
            <a href="index.html">
                <img src="{{ asset(config('base.logo.aside')) }}" height="30px" alt="logo">
            </a>
            <div class="d-flex align-items-center">
                <button class="p-0 btn burger-icon burger-icon-left" id="kt_aside_mobile_toggle">
                    <span></span>
                </button>
                @if (auth()->check())
                    <button class="p-0 ml-2 btn btn-hover-text-primary" id="kt_header_mobile_topbar_toggle">
                        <img src="{{ asset(auth()->user()->image_path) }}" class="img-circle" height="30px">
                    </button>
                @endif
            </div>
        </div>

        <div class="no-body-clear d-flex flex-column flex-root">
            <div class="d-flex flex-row flex-column-fluid">
                @include('layouts.base.aside')

                <div id="wrapper" class="d-flex flex-column flex-row-fluid wrapper">
                    @include('layouts.base.header')
                    <div id="content" class="content d-flex flex-column flex-column-fluid">
                        <div id="content-page" class="content-page" data-sidebar-mini="{{ $sidebarMini ?? 0 }}"
                            data-module="{{ $module ??'' }}">
                            @stack('styles')
                            @yield('content')
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="kt_scrolltop" class="no-body-clear scrolltop">
            {!! Base::getSVG('assets/media/svg/icons/Navigation/Up-2.svg') !!}
        </div>
        <div id="base_script" class="no-body-clear">
            <script>
                BaseAppLang = {!! json_encode(__('base'), JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES) !!};
            </script>
            <script src="{{ '/assets/js/theme.bundle.js' }}"></script>
            <script src="{{ '/assets/js/base.bundle.js' }}"></script>
            <script src="{{ '/assets/js/modules.bundle.js' }}"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
            <script>
                // if ('{{ url()->full() }}' != '{{ route('login') }}') {
                //     /*!
                //      * jQuery Cookie Plugin v1.4.1
                //      * https://github.com/carhartl/jquery-cookie
                //      *
                //      * Copyright 2006, 2014 Klaus Hartl
                //      * Released under the MIT license
                //      */
                //     (function(factory) {
                //         if (typeof define === 'function' && define.amd) {
                //             // AMD (Register as an anonymous module)
                //             define(['jquery'], factory);
                //         } else if (typeof exports === 'object') {
                //             // Node/CommonJS
                //             module.exports = factory(require('jquery'));
                //         } else {
                //             // Browser globals
                //             factory(jQuery);
                //         }
                //     }(function($) {

                //         var pluses = /\+/g;

                //         function encode(s) {
                //             return config.raw ? s : encodeURIComponent(s);
                //         }

                //         function decode(s) {
                //             return config.raw ? s : decodeURIComponent(s);
                //         }

                //         function stringifyCookieValue(value) {
                //             return encode(config.json ? JSON.stringify(value) : String(value));
                //         }

                //         function parseCookieValue(s) {
                //             if (s.indexOf('"') === 0) {
                //                 // This is a quoted cookie as according to RFC2068, unescape...
                //                 s = s.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, '\\');
                //             }

                //             try {
                //                 // Replace server-side written pluses with spaces.
                //                 // If we can't decode the cookie, ignore it, it's unusable.
                //                 // If we can't parse the cookie, ignore it, it's unusable.
                //                 s = decodeURIComponent(s.replace(pluses, ' '));
                //                 return config.json ? JSON.parse(s) : s;
                //             } catch (e) {}
                //         }

                //         function read(s, converter) {
                //             var value = config.raw ? s : parseCookieValue(s);
                //             return $.isFunction(converter) ? converter(value) : value;
                //         }

                //         var config = $.cookie = function(key, value, options) {

                //             // Write

                //             if (arguments.length > 1 && !$.isFunction(value)) {
                //                 options = $.extend({}, config.defaults, options);

                //                 if (typeof options.expires === 'number') {
                //                     var days = options.expires,
                //                         t = options.expires = new Date();
                //                     t.setMilliseconds(t.getMilliseconds() + days * 864e+5);
                //                 }

                //                 return (document.cookie = [
                //                     encode(key), '=', stringifyCookieValue(value),
                //                     options.expires ? '; expires=' + options.expires.toUTCString() :
                //                     '', // use expires attribute, max-age is not supported by IE
                //                     options.path ? '; path=' + options.path : '',
                //                     options.domain ? '; domain=' + options.domain : '',
                //                     options.secure ? '; secure' : ''
                //                 ].join(''));
                //             }

                //             // Read

                //             var result = key ? undefined : {},
                //                 // To prevent the for loop in the first place assign an empty array
                //                 // in case there are no cookies at all. Also prevents odd result when
                //                 // calling $.cookie().
                //                 cookies = document.cookie ? document.cookie.split('; ') : [],
                //                 i = 0,
                //                 l = cookies.length;

                //             for (; i < l; i++) {
                //                 var parts = cookies[i].split('='),
                //                     name = decode(parts.shift()),
                //                     cookie = parts.join('=');

                //                 if (key === name) {
                //                     // If second argument (value) is a function it's a converter...
                //                     result = read(cookie, value);
                //                     break;
                //                 }

                //                 // Prevent storing a cookie that we couldn't decode.
                //                 if (!key && (cookie = read(cookie)) !== undefined) {
                //                     result[name] = cookie;
                //                 }
                //             }

                //             return result;
                //         };

                //         config.defaults = {};

                //         $.removeCookie = function(key, options) {
                //             // Must not alter options, thus extending a fresh object...
                //             $.cookie(key, '', $.extend({}, options, {
                //                 expires: -1
                //             }));
                //             return !$.cookie(key);
                //         };

                //     }));

                //     let checkIteration = 1;
                //     setInterval(() => {
                //         $.ajax({
                //             method: 'GET',
                //             url: '{{ url('auth/check') }}?i='+(checkIteration++),
                //             success: function() {
                //                 console.log('212');
                //             },
                //             error: function() {
                //                 window.location = '{{ url('login') }}';
                //             },
                //         });
                //     }, 1000 * 6);

                //     // function logout() {
                //     //     $.ajax({
                //     //         method: 'POST',
                //     //         url: '{{ route('logout') }}',
                //     //         // async: false,
                //     //         data: {
                //     //             _token: '{{ csrf_token() }}'
                //     //         },
                //     //         success: function(a, b, c) {
                //     //             console.log(a, b, c);
                //     //         }
                //     //     });
                //     //     $.cookie("{{ config('session.cookie') }}", null, {
                //     //         path: '/'
                //     //     });
                //     //     $.removeCookie('the_cookie', {
                //     //         path: '/'
                //     //     });
                //     //     document.location.href = '{{ url('logout') }}';
                //     //     $('#signOutBtn').trigger('click');
                //     // }
                //     // window.onbeforeunload = function() {
                //     //     console.log(106);
                //     //     logout();
                //     //     return null;
                //     // }
                //     // window.onunload = function() {
                //     //     console.log(111);
                //     //     logout();
                //     //     return null;
                //     // }
                // }

                $(function() {
                    $('body').removeClass('content-loading');
                });
            </script>
        </div>
        @stack('scripts')
    </body>

    </html>
@else
    <div id="content-page" class="content-page" data-sidebar-mini="{{ $sidebarMini ?? 0 }}"
        data-module="{{ $module ?? '' }}">
        @stack('styles')
        @yield('content')
        <div class="base-content--state"
            data-title="{{ !empty($title) ? $title . ' | ' . config('app.name') : config('app.name') }}"
            data-url="{{ url()->full() }}" data-csrf-token="{{ csrf_token() }}"
            data-last-user-notification="{{ auth()->user()->getLastNotificationId() }}">
            <script>
                if (!document.getElementById('kt_body')) {
                    document.getElementById("content-page").style.display = "none";
                    window.location.reload();
                }
            </script>
        </div>
        @stack('scripts')
    </div>
@endif
