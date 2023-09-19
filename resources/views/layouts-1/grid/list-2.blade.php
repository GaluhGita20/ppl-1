@yield('start-list')
<div class="row">
    <div class="col-lg-12">
    @includeWhen(empty($tableStruct['tabs']), 'layouts.grid.datatable')
    @includeWhen(!empty($tableStruct['tabs']), 'layouts.grid.datatableTabs')
    </div>
</div>
@yield('end-list')