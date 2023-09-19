<div class="dropdown">
    @php
        $count = auth()
            ->user()
            ->notifications()
            ->wherePivot('readed_at', null)
            ->count();
    @endphp
    <!--begin::Toggle-->
    <div class="topbar-item" data-toggle="dropdown" data-offset="10px,0px">
        <div class="btn btn-icon btn-clean btn-dropdown btn-lg mr-1 pulse pulse-success">
            <i class="far fa-bell"></i>
            <span class="pulse-ring"></span>
        </div>
        <div class="user-notification-badge {{ $count === 0 ? 'hide' : '' }}"
            style="margin-top: -20px; margin-left: -20px; z-index: 11">
            <span class="label label-light-danger label-pill label-inline mr-2">{{ $count }}</span>
        </div>
    </div>
    <!--end::Toggle-->
    <!--begin::Dropdown-->
    <div class="dropdown-menu p-0 m-0 dropdown-menu-right dropdown-menu-anim-up dropdown-menu-lg">
        <form>
            <!--begin::Header-->
            <div class="d-flex flex-column pt-12 bgi-size-cover bgi-no-repeat rounded-top"
                style="background-image: url({{ asset('assets/media/misc/bg-1.jpg') }})">
                <!--begin::Title-->
                <h4 class="d-flex flex-center rounded-top">
                    <span class="text-white">User Notifications</span>
                    <span
                        class="user-notification-header btn btn-text btn-success btn-sm font-weight-bold btn-font-md ml-2 {{ $count === 0 ? 'hide' : '' }}">
                        <span>{{ $count }} Baru</span>
                    </span>
                </h4>
                <!--end::Title-->
                <!--begin::Tabs-->
                <ul class="nav nav-bold nav-tabs nav-tabs-line nav-tabs-line-3x nav-tabs-line-transparent-white nav-tabs-line-active-border-success mt-3 px-8"
                    role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active show" data-toggle="tab" href="#topbar_notifications_events">Events</a>
                    </li>
                </ul>
                <!--end::Tabs-->
            </div>
            <!--end::Header-->
            <!--begin::Content-->
            <div class="tab-content">
                <!--begin::Tabpane-->
                <div class="tab-pane active show" id="topbar_notifications_events" role="tabpanel">
                    <!--begin::Nav-->
                    @php
                        $notifications = auth()
                            ->user()
                            ->notifications()
                            ->orderBy('created_at', 'desc')
                            ->paginate(30);
                    @endphp
                    @if (isset($notifications) && count($notifications))
                        <div class="navi navi-hover scroll my-4 user-notification-items"
                            data-count="{{ auth()->user()->notifications()->wherePivot('readed_at', null)->count() }}"
                            data-scroll="true" style="min-height: 100px; max-height: 300px;">
                            @foreach ($notifications as $item)
                                <a href="{{ route('ajax.userNotificationRead', $item->id) }}"
                                    class="navi-item base-content--replace {{ $loop->last ? 'mb-7' : '' }}">
                                    <div class="navi-link">
                                        <div class="navi-icon mr-2 v-align-top">
                                            <i class="flaticon2-notification {{ $item->pivot->readed_at ? '' : 'text-danger' }}"></i>
                                        </div>
                                        <div class="navi-text">
                                            <div class="text-bold text-app">{!! $item->module !!}</div>
                                            <div class="text-normal">{!! $item->message !!}</div>
                                            <div class="text-muted">Dibuat Oleh: {{ $item->from_name }}</div>
                                            <div class="text-muted">Dibuat Pada: {{ $item->creationDate(false) }}</div>
                                        </div>
                                    </div>
                                </a>
                            @endforeach
                        </div>
                        <div class="text-center">
                            <div class="separator separator-solid  my-5"></div>
                            <a href="{{ route('settings.notification') }}"
                                class="btn btn-light-primary mb-3 base-content--replace">
                                {{ 'Baca Semua' }} <i class="fas fa-angle-right ml-2"></i>
                            </a>
                        </div>
                    @else
                        <div class="d-flex flex-center text-center text-muted min-h-200px">
                            {{ __('Data tidak tersedia!') }}
                        </div>
                    @endif
                </div>
                <!--end::Tabpane-->
            </div>
            <!--end::Content-->
        </form>
    </div>
    <!--end::Dropdown-->
</div>
