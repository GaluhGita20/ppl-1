@extends('layouts.auth2')
@section('content')

<style>
    .alert {
        padding: 20px;
        color: black; /* Warna teks */
        margin-bottom: 15px;
        display: block; /* Alert awalnya tersembunyi */
    }

    .closebtn {
        margin-left: 15px;
        color: white;
        font-weight: bold;
        float: right;
        font-size: 22px;
        line-height: 20px;
        position: absolute;
        top: 0;
        right: 0;
        padding: 5px;
    }
    .hidden{
        display: none;
    }
</style>
<!--begin::Signin-->
    <div class="mb-10 mb-lg-15">
        <h1 class="font-size-h1 font-weight-boldest">PPL TASK 1</h1>
        <h1 class="font-size-h3"># Akar Kuadrat (API + SP SQL)</h1>
    </div>
    <div id="myAlert" class="alert alert-info">
        <label class="font-weight-bolder">
            Login menggunakan nim. <br> Data user yang tergenerate 2005551001 - 200555101150, 2105551001 - 2105551150, dan 1905551001 - 1905551150.
        </label>
        <span class="closebtn" onclick="closeAlert()">&times;</span>
    </div>
    <form class="form" method="POST" action="{{route('login')}}">
        @csrf
        <div class="form-group">
            <label class="font-weight-bolder">{{ __('Username / Email') }}</label>
            <input type="text" class="form-control @error('email') is-invalid @enderror @error('username') is-invalid @enderror"
                value="{{ session('remember_username') ?? old('username') }}"
                placeholder="{{ __('Masukkan Username / Email') }}" name="username" autofocus>
            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
            @error('username')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label class="font-weight-bolder">{{ __('Password') }}</label>
            <div class="input-group">
                <input class="form-control @error('password') is-invalid @enderror" id="pwCtrl" type="password"
                    placeholder="{{ __('Masukkan Password') }}" name="password" autocomplete="off" />
                <button type="button" id="togglePassword" class="btn btn-outline-secondary" onclick="togglePasswordVisibility()" tabindex="-1">
                    <i class="fas fa-eye"></i>
                </button>
            </div>
            @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group">
            <label class="checkbox">
                <input type="checkbox" name="remember"
                    {{ session('remember_username') != '' || old('remember') ? 'checked' : '' }}>
                <span class="mr-2"></span>{{ \Base::trans('Remember Me') }}
            </label>
        </div>

        <div class="form-group d-flex flex-wrap justify-content-between align-items-center">
            <button type="submit" class="btn btn-primary btn-block font-weight-bold my-3 py-3">
                {{ \Base::trans('Masuk') }}
            </button>
            @if (Route::has('password.request'))
                <a href="{{ route('password.request') }}"
                    class="w-100 text-center text-dark-50 text-hover-danger my-3 mr-2">
                    {{ \Base::trans('Lupa Password?') }}
                </a>
            @endif
        </div>
    </form>
@endsection

@if (session('remember_username') != '')
    @push('scripts')
        <script>
            $(document).ready(function() {
                $('#pwCtrl').focus();
            });
        </script>
    @endpush
@endif

@push('scripts')
<script>
    function togglePasswordVisibility() {
        const passwordInput = document.getElementById('pwCtrl');
        const togglePassword = document.getElementById('togglePassword');

        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            togglePassword.innerHTML = '<i class="fas fa-eye-slash"></i>';
        } else {
            passwordInput.type = 'password';
            togglePassword.innerHTML = '<i class="fas fa-eye"></i>';
        }
    }
</script>
@endpush
