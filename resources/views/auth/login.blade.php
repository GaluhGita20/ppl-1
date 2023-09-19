@extends('layouts.auth')
@section('content')
<!--begin::Signin-->
<div class="login-form login-signin">
    <div class="mb-10 text-center">
        <img src="{{ asset('assets/images/logo-a.png') }}" alt="bank jatim e-mutasi logo" width="160px">
    </div>
    <div class="mb-10 mb-lg-15">
        <h1 class="font-size-h1 font-weight-boldest">E-MUTASI</h1>
        <h1 class="font-size-h3">Sistem Informasi Mutasi Pegawai</h1>
        <p class="text-muted font-weight-bold">Masuk untuk melanjutkan</p>
    </div>
    <!--begin::Form-->
    <form class="form" method="POST" action="{{ route('login') }}">
        @csrf
        <div class="form-group">
            <label class="font-weight-bolder">Username / Email</label>
            <input type="text" class="form-control @error('username') is-invalid @enderror" value="{{ old('username') }}" placeholder="Masukan Username / Email" name="username" autocomplete="off">
            @error('username')
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
            @enderror
        </div>
        <div class="form-group">
            <label class="font-weight-bolder">Kata Sandi</label>
            <div class="input-group">
                <input class="form-control @error('password') is-invalid @enderror" id="pwCtrl" type="password" placeholder="Masukan Kata Sandi" name="password" autocomplete="off" />
                <button type="button" id="togglePassword" class="btn btn-outline-secondary" onclick="togglePasswordVisibility()">
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
            <label class="font-weight-bolder">Captcha</label>
            {{-- {!! captcha_img() !!} --}}
            {!! getCaptchaBox('captcha') !!}
            {{-- {{ $errors }} --}}
            {{-- {{ $errors->captcha }} --}}
            {{-- {{ $errors->get('captcha')[0]??'' }} --}}
            {{-- <input id="captcha" name="captcha" class="form-control @error('captcha') is-invalid @enderror"
                placeholder="Captcha" autocomplete="off"> --}}
            @if ($errors->get('captcha')[0] ?? null)
                {{-- @error('captcha') --}}
                <span style="color: #F64E60; font-weight: 400; font-size: 10.8px">
                    <strong>{{ $errors->get('captcha')[0] ?? '' }}</strong>
                </span>
                {{-- @enderror --}}
            @endif
        </div>
        <div class="form-group d-flex flex-wrap justify-content-between align-items-center">
            <button type="submit" class="btn btn-danger btn-block font-weight-bold my-3 py-3">Masuk</button>
            {{-- <a href="{{ route('password.request') }}" class="w-100 text-center text-dark-50 text-hover-danger my-3 mr-2" id="">Lupa Password ?</a> --}}
        </div>
        <!--end::Action-->
    </form>
    <!--end::Form-->
</div>
<!--end::Signin-->
@endsection
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
