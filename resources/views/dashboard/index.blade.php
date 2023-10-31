@extends('layouts.auth')
@section('content')

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
<div class="mb-10 mb-lg-15">
    <h1 class="font-size-h2 font-weight-boldest">Report</h1>
</div>
<table id="history-table" class="display">
    <thead>
        <tr>
            <th>ID</th>
            <th>Tipe</th>
            <th>Input</th>
            <th>Output</th>
            <th>Duration</th>
        </tr>
    </thead>
</table>
<!--end::Signin-->
@endsection

@push('scripts')
<script>
jQuery(document).ready(function() {
    jQuery('#history-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{{ route('dashboard.grid') }}',
        columns: [
            { data: 'id', name: 'id' },
            { data: 'tipe', name: 'tipe' },
            { data: 'input', name: 'input' },
            { data: 'output', name: 'output' },
            { data: 'duration', name: 'duration' },
        ]
    });
});
  
</script>
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
