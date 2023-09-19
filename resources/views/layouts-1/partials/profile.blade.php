<div class="dropdown">
    <!--begin::Toggle-->
    <div class="topbar-item" data-toggle="dropdown" data-offset="0px,0px" aria-expanded="false">
        <div class="btn btn-icon btn-hover-transparent-white d-flex align-items-center btn-lg px-md-2 w-md-auto">
            <span class="text-muted opacity-90 font-weight-bolder font-size-base d-none d-md-inline mr-4">
                Hi, {{ auth()->user()->name }} <br>
                <span class="opacity-80">
                    {{ auth()->user()->groups ? auth()->user()->groups->first()->name : '-' }}
                </span>
            </span>
            @if (auth()->user()->image)
                <div class="symbol ssymbol-lg-35 symbol-25 symbol-light-success symbol-circle shadow">
                    <img src="{{ asset(auth()->user()->image_path) }}" alt="Image" width="10px">
                    <i class="symbol-badge symbol-badge-bottom bg-success"></i>
                </div>
            @else
                <span class="symbol symbol-lg-35 symbol-25 symbol-light-success">
                    <span class="symbol-label font-size-h5 font-weight-bold">
                        {{ auth()->user()->name[0] }}
                    </span>
                </span>
            @endif
        </div>
    </div>
    <!--end::Toggle-->
    <!--begin::Dropdown-->
    <div class="dropdown-menu p-0 m-0 dropdown-menu-right dropdown-menu-anim-up dropdown-menu-lg p-0" style="">
        <!--begin::Header-->
        <div class="d-flex align-items-center p-3 rounded-top">
            <!--begin::Symbol-->
            @if (auth()->user()->image)
            <div class="symbol symbol-md bg-light-primary mr-3 flex-shrink-0">
                <img src="{{ asset(auth()->user()->image_path) }}" alt="">
            </div>
            @else
            <div class="symbol symbol-md bg-light-primary mr-3 flex-shrink-0">
                <img src="{{ asset('assets/media/users/default.jpg') }}" alt="">
            </div>
            @endif
            <!--end::Symbol-->
            <!--begin::Text-->
            <div class="text-dark m-0 flex-grow-1 mr-3 font-size-h5">
                <div class="font-weight-bold">{{ auth()->user()->name }}</div>
                {{-- <div class="text-muted" style="font-size: 13px">{{ auth()->user()->ehc ? auth()->user()->ehc->cabang->Lengkap : auth()->user()->name }}</div> --}}
                <div class="text-muted" style="font-size: 13px">{{ auth()->user()->groups ? auth()->user()->groups->first()->name : '-' }}</div>
            </div>
            {{-- <span class="label label-light-success label-lg font-weight-bold label-inline">3 messages</span> --}}
            <!--end::Text-->
        </div>
        <div class="separator separator-solid"></div>
        <!--end::Header-->
        <!--begin::Nav-->
        <div class="navi navi-spacer-x-0 pt-3">
            <!--begin::Item-->
            <a href="{{ route('settings.user.profile') }}" class="navi-item px-8">
                <div class="navi-link">
                    <div class="navi-icon mr-2">
                        <i class="flaticon2-calendar-3 text-success"></i>
                    </div>
                    <div class="navi-text">
                        <div class="font-weight-bold">My Profile</div>
                        <div class="text-muted">Account settings and more</div>
                    </div>
                </div>
            </a>
            <!--end::Item-->
            <!--begin::Item-->
            <a href="{{ route('settings.user.notification') }}" class="navi-item px-8">
                <div class="navi-link">
                    <div class="navi-icon mr-2">
                        <i class="far fa-bell text-warning"></i>
                    </div>
                    <div class="navi-text">
                        <div class="font-weight-bold">My Notification</div>
                        <div class="text-muted">All your notifications</div>
                    </div>
                </div>
            </a>
            <!--end::Item-->
            <!--begin::Item-->
            <a href="{{ route('settings.user.activity') }}" class="navi-item px-8">
                <div class="navi-link">
                    <div class="navi-icon mr-2">
                        <i class="flaticon2-rocket-1 text-danger"></i>
                    </div>
                    <div class="navi-text">
                        <div class="font-weight-bold">My Activities</div>
                        <div class="text-muted">All your activities</div>
                    </div>
                </div>
            </a>
            <!--end::Item-->
            <!--begin::Footer-->
            <div class="navi-separator mt-3"></div>
            <div class="navi-footer px-3 py-3 float-right">
                <a href="{{ asset('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();" class="btn btn-light-primary font-weight-bold">Sign Out</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
            </div>
            <!--end::Footer-->
        </div>
        <!--end::Nav-->
    </div>
    <!--end::Dropdown-->
</div>
