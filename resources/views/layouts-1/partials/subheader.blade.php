<div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
  <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
    <!--begin::Info-->
    <div class="d-flex align-items-center flex-wrap mr-2">
      <!--begin::Page Title-->
      <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-3">{{ $title }}</h5>
      <!--end::Page Title-->
      <!--begin::Actions-->
      <div class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-3 bg-gray-200"></div>
      {{-- <span class="text-dark font-weight-light mt-2 mb-2 mr-3">{{ $subtitle }}</span> --}}
      <div class="">
        @section('breadcrumb')
          @php
              $keys = array_keys($breadcrumb);
              $end = end($keys);
          @endphp
          <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
              <li class="breadcrumb-item">
                  <a href="{{ url(App\Providers\RouteServiceProvider::HOME) }}" class="text-muted"><i class="fas fa-home"></i></a>
              </li>
              @foreach ($breadcrumb as $name => $link)
              <li class="breadcrumb-item">
                  <a href="{{ $link }}" class="text-muted">{{ $name }}</a>
              </li>
              @endforeach
          </ul>
        @show
      </div>
      <!--end::Actions-->
    </div>
    <div class="col text-right">
      @yield('buttons-before')
        @section('buttons')
          @if (\Route::has($route.'.create'))
            @if (empty($perms) || auth()->user()->checkPerms($perms . '.' . 'add'))
            <a href="{{ route($route.'.create') }}" class="btn btn-info ml-2 {{ empty($baseContentReplace) ? 'base-modal--render' : '' }}" data-modal-backdrop="false" data-modal-v-middle="false" data-toggle="tooltip" data-original-title="{{ __('Tambah') }} Data" data-placement="bottom">
              <i class="fa fa-plus mr-1"></i> {{ __('Tambah Data') }}
            </a>
            @endif
          @endif
        @show
      @yield('buttons-after')
    </div>
    <!--end::Info-->
  </div>
</div>
