@inject('user', 'App\Entities\User')

@foreach ($items as $item)
    @if (is_null($item->perms) ||
        (auth()->user()->can([$item->perms . ' view']) ||
            auth()->user()->can($item->perms) ||
            auth()->user()->checkPerms($item->perms)))
        @if ($item->separator)
            <li class="px-5 pt-8 pb-5 menu-section text-muted font-weight-bold text-uppercase separator-section">
                <span class="separator-text">{!! $item->title !!}</span>
                <i class="separator-icon ki ki-bold-more-hor icon-md"></i>
            </li>
        @elseif($item->logout)
            <li class="">
                <a href="{{ route('logout') }}"
                    onclick="event.preventDefault();document.getElementById('logout-form').submit();" class="menu-link">
                    <i class="menu-icon fas fa-power-off text-danger"></i>
                    <span class="text-capitalize">{!! $item->title !!}</span>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </a>
            </li>
        @else
            <li
                class="{{ $item->isActive ? 'active' : '' }} @if ($item->hasChildren()) has-sub 'closed' {{ $item->isActive ? 'expand' : '' }} @endif">
                <a href="{!! $item->url() !!}" class="menu-link">
                    @if ($item->hasChildren())
                        <b class="caret"></b>
                    @endif
                    <i class="menu-icon {{ $item->icon }}"></i>
                    <span class="text-capitalize">{!! $item->title !!}</span>
                    @if ($item->badge)
                        @if ($user->getNotif($item->badge) != 0)
                            <span class="menu-label">
                                <span class="label pulse pulse-info bg-primary">
                                    <span
                                        class="text-white position-relative font-weight-boldest">{{ $user->getNotif($item->badge) }}</span>
                                    <span class="pulse-ring"></span>
                                </span>
                            </span>
                        @endif
                    @endif
                </a>
                @if ($item->hasChildren())
                    <ul class="sub-menu closed" @if (!$item->isActive) style="display: none;" @endif>
                        @include('layouts.partials.menu', ['items' => $item->children()])
                    </ul>
                @endif
            </li>
        @endif
    @endif
@endforeach
