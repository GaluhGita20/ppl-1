<div class="card card-custom">
	<div class="card-body">
		<div class="table-responsive">
		    @if(isset($tableStruct['datatable_1']))
			    <table id="datatable_1" class="table table-bordered table-hover is-datatable" style="width: 100%;" data-url="{{ isset($tableStruct['url']) ? $tableStruct['url'] : route($routes.'.grid') }}" data-paging="{{ $paging ?? true }}" data-info="{{ $info ?? true }}">
			        <thead>
			            <tr>
			                @foreach ($tableStruct['datatable_1'] as $struct)
			                	<th class="text-center v-middle"
			                		data-columns-name="{{ $struct['name'] ?? '' }}"
			                		data-columns-data="{{ $struct['data'] ?? '' }}"
			                		data-columns-label="{{ $struct['label'] ?? '' }}"
			                		data-columns-sortable="{{ $struct['sortable'] === true ? 'true' : 'false' }}"
			                		data-columns-width="{{ $struct['width'] ?? '' }}"
			                		data-columns-class-name="{{ $struct['className'] ?? '' }}"
			                		style="{{ isset($struct['width']) ? 'width: '.$struct['width'].'; ' : '' }}">
			                		{{ $struct['label'] }}
			                	</th>
			                @endforeach
			            </tr>
			        </thead>
			        <tbody>
			            @yield('tableBody')
			        </tbody>
			    </table>
			@endif
		</div>
		@yield('card-bottom-table')
	</div>
</div>
