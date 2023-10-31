@extends('layouts.app')
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
    .hidden{
        display: none;
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
    <form class="form" method="POST" action="{{route($routes . '.result')}}">
        @csrf
        <div class="form-group">
            <label class="font-weight-bolder">Masukkan Angka</label>
            <input type="text" class="form-control" placeholder="Masukan Angka" name="input" value="{{ session('input', '') }}" required id='input'>
        </div>
        <div class="form-group">
            <label class="font-weight-bolder">Tipe</label>
            <select name="tipe" class="form-control base-plugin--select2 tipe"
                placeholder="{{ __('Pilih Salah Satu') }}" required>
                <option value="">{{ __('Pilih Salah Satu') }}</option>
                <option value="api">{{ __('API') }}</option>
                <option value="sp sql">{{ __('SP SQL') }}</option>
            </select>
        </div>
        <hr>
        <div class="form-group" style="text-align:center;">
            <label class="font-weight-bolder">Hasil</label>
            <div class="result">
            {{ session('output', '...................') }}
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group d-flex flex-wrap justify-content-between align-items-center">
                    <button type="submit" class="btn btn-success btn-block font-weight-bold my-3 py-3">Submit</button>
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
<div class="login-form login-signin" style="width:100%; max-width:unset;">
    <div class="mb-10 mb-lg-15">
        <h1 class="font-size-h2 font-weight-boldest">History</h1>
    </div>
    <div class="row">
      <div class="col-lg-12">
            <div class="table-responsive-sm">
                <table class="table">
                    <thead>
                        <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tipe</th>
                        <th scope="col">Aktivitas</th>
                        <th scope="col">Durasi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if($records->count() == 0)
                            <tr class="text-center">
                                <td colspan="4">Data tidak ditemukan!</td>
                            </tr>
                        @else
                            @foreach($records as $index => $r)
                            <tr class="text-center">
                                <th scope="row">{{ $index + 1 }}</th>
                                <td>{{ $r->tipe }}</td>
                                <td>{!! 'Input=' . $r->input . '<br> Output=' . $r->output !!}</td>
                                <td>{{ $r->duration }}</td>
                            </tr>
                            @endforeach
                        @endif
                    </tbody>
                </table>
                {{ $records->links() }}
            </div>
      </div>
    </div>
</div>
<!--end::Signin-->
@endsection
@push('scripts')
<script>

    let el = document.getElementById('input')
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
