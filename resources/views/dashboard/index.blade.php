@extends('layouts-1.app')
@section('content-1')

<style>
    .alert {
        padding: 20px;
        background-color: red; /* Warna latar belakang */
        color: white; /* Warna teks */
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
        cursor: pointer;
    }
</style>
<!--begin::Signin-->
<div class="login-form login-signin">
    <div class="mb-10 text-center">
        <img src="{{ config('base.logo.auth') }}" alt="bank jatim e-mutasi logo" width="160px">
    </div>
    <div class="mb-10 mb-lg-15">
        <h1 class="font-size-h1 font-weight-boldest">PPL TASK 1</h1>
        <h1 class="font-size-h3"># Akar Kuadrat (API + SP SQL)</h1>
    </div>
    <!--begin::Form-->
    @if(session('message'))
    <div id="myAlert" class="alert">
        {{ session('message_error', 'This is an alert message.') }}
        <span class="closebtn" onclick="closeAlert()">&times;</span>
    </div>
    @endif
    <form class="form" method="POST" action="{{route($route . '.result')}}">
        @csrf
        <div class="form-group">
            <label class="font-weight-bolder">Masukkan Angka</label>
            <input type="text" class="form-control" placeholder="Masukan Angka" name="input" value="{{ session('input', '') }}">
        </div>
        <hr>
        <div class="form-group" style="text-align:center;">
            <label class="font-weight-bolder">Hasil</label>
            <div class="result">
            {{ session('output', '...................') }}
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group d-flex flex-wrap justify-content-between align-items-center">
                    <button type="submit" class="btn btn-info btn-block font-weight-bold my-3 py-3">API</button>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group d-flex flex-wrap justify-content-between align-items-center">
                    <button type="submit" class="btn btn-success btn-block font-weight-bold my-3 py-3">SP SQL</button>
                </div>
            </div>
        </div>
        
        <!--end::Action-->
    </form>
    <!--end::Form-->
</div>
<!--end::Signin-->
@endsection
@section('content-2')
<!--begin::Signin-->
<div class="login-form login-signin">
    <div class="mb-10 mb-lg-15">
        <h1 class="font-size-h2 font-weight-boldest">History</h1>
    </div>
    <div class="row">
      <div class="col-lg-12">
        @includeWhen(empty($tableStruct['tabs']), 'layouts.partials.datatable')
        @includeWhen(!empty($tableStruct['tabs']), 'layouts.partials.datatables')
      </div>
    </div>
</div>
<!--end::Signin-->
@endsection
@push('scripts')
<script>
    function showAlert() {
        var alert = document.getElementById('myAlert');
        alert.style.display = 'block';
    }

    function closeAlert() {
        var alert = document.getElementById('myAlert');
        alert.style.display = 'none';
    }
</script>
@endpush
