/**
 * ============================= BASE LIST ============================
 * return render(options), loader(modal_id, loading=true)
 */
const BaseList = function () {
	"use strict";

	return {
		init: function (tables = ['#datatable_1', '#datatable_2', '#datatable_3', '#datatable_4', '#datatable_5'], options = {}) {
			this.draw(tables, options);
		},
		draw: function (tables = ['#datatable_1', '#datatable_2', '#datatable_3', '#datatable_4', '#datatable_5'], options = {}) {
			$.each(tables, function (i, table_id) {
				if ($(table_id).length) {
					BaseList.render(table_id, options);
				}
			});
		},
		lang: function () {
			if ($('html').attr('lang') == 'id') {
				return {
					"sProcessing": `<div class="spinners"><div class="spinner-grow text-success" role="status">
                            <span class="sr-only">Loading...</span>
                         </div>
                         <div class="spinner-grow text-danger" role="status">
                             <span class="sr-only">Loading...</span>
                         </div>
                         <div class="spinner-grow text-warning" role="status">
                             <span class="sr-only">Loading...</span>
                         </div></div>`,
					"sLengthMenu": "Menampilkan _MENU_ data per halaman",
					"sZeroRecords": "Tidak ditemukan data yang sesuai",
					"sInfo": "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
					"sInfoEmpty": "Menampilkan 0 sampai 0 dari 0 data",
					"sInfoFiltered": "(difilter dari _MAX_ keseluruhan data)",
					"sInfoPostFix": "",
					"sSearch": "Cari:",
					"sUrl": "",
					"oPaginate": {
						"sFirst": "Pertama",
						"sPrevious": "Sebelumnya",
						"sNext": "Selanjutnya",
						"sLast": "Terakhir"
					}
				}
			}
			else {
				return {
					"sProcessing": `<div class="spinners"><div class="spinner-grow text-success" role="status">
                            <span class="sr-only">Loading...</span>
                         </div>
                         <div class="spinner-grow text-danger" role="status">
                             <span class="sr-only">Loading...</span>
                         </div>
                         <div class="spinner-grow text-warning" role="status">
                             <span class="sr-only">Loading...</span>
                         </div></div>`,
					"sLengthMenu": "Display _MENU_ data per page",
					"sZeroRecords": "Nothing found",
					"sInfo": "Showing _START_ to _END_ of _TOTAL_ data",
					"sInfoEmpty": "No data available",
					"sInfoFiltered": "(filtered from _MAX_ total data)",
					"sInfoPostFix": "",
					"sSearch": "Search:",
					"sUrl": "",
					"oPaginate": {
						"sFirst": "First",
						"sPrevious": "Previous",
						"sNext": "Next",
						"sLast": "End"
					}
				}
			}
		},
		render: function (table_id, options = {}) {
			var el = $(table_id);

			var defaultOptions = {
				columns: [],
				url: el.data('url'),
				method: 'POST',
				token: BaseUtil.getToken(),
				callback: false,
			},
				options = $.extend(defaultOptions, options);

			if (el.length) {
				if (!$.fn.DataTable.isDataTable(table_id)) {
					$.each(el.find('thead th'), function (i) {
						var th = $(this);
						options.columns[i] = {
							sName: th.data('columns-name'),
							mData: th.data('columns-data'),
							label: th.data('columns-label'),
							bSortable: th.data('columns-sortable'),
							sWidth: th.data('columns-width'),
							sClass: th.data('columns-class-name'),
						}
					});
					el.DataTable({
						lengthChange: false,
                        pageLength: (typeof el.data('length') !== 'undefined' ? el.data('length') : 10),
						filter: false,
						processing: true,
						serverSide: true,
						autoWidth: false,
						sorting: [],
						language: BaseList.lang(),
						paging: (el.data('paging') == false ? false : true),
						info: (el.data('info') == false ? false : true),
						ajax: {
							url: options.url,
							method: options.method,
							beforeSend: function () {
								setTimeout(function () {
									el.removeClass('hide');
								}, 500);
							},
							data: function (request) {
								request._token = options.token;
								$('#dataFilters input.filter-control, #dataFilters select.filter-control').each(function () {
									var name = $(this).data('post'),
										val = $(this).val();
									request[name] = val;
								});
								if (options.extraData !== undefined) {
									request['extraData'] = options.extraData;
								}
							},
							error: function (responseError, status) {
								if (el.hasClass('first-render-has-error')) {
									console.log(responseError);
									return false;
								}
								else {
									el.addClass('first-render-has-error');
									el.DataTable().draw();
								}
							}
						},
						columns: options.columns,
						drawCallback: function (resp) {
							el.removeClass('hide');

							this.api().column(0, {
								search: 'applied',
								order: 'applied'
							}).nodes().each(function (cell, i, x, y) {
								if (parseInt(cell.innerHTML) + i + 1) {
									cell.innerHTML = parseInt(cell.innerHTML) + i + 1;
								}
							});

							if (el.data('badge') == true && el.data('tab-list') != undefined) {
								var tab_list = $('.tab-list[href="' + el.data('tab-list') + '"]').first(),
									total_records = resp.json.recordsTotal;

								if (total_records && tab_list.length) {
									tab_list.find('.tab-badge').remove();
									tab_list.append(`
	                    		    	<span class="label label-success tab-badge ml-2  label-inline">`+ total_records + `</span>
	                    		    `);
								}
							}

							BasePlugin.initTooltipPopover();
							el.find('td .btn').closest('td').addClass('with-button');
							if ($.isFunction(options.callback)) {
								options.callback(options, resp);
							}
						}
					});

					if (BaseUtil.isDev() === false) {
						$.fn.dataTable.ext.errMode = 'none';
						el.on('error.dt', function (e, settings, techNote, message) {
							console.log('An error has been reported by DataTables: ', message);
						}).DataTable();
					}
				}
				else {
					el.DataTable().draw();
				}
			}
		},
		handleDataFilters: function () {
			var isFiltered = false;
			$.each($('.filter-control'), function () {
				if ($(this).val()) {
					isFiltered = true;
					return false;
				}
			});

			if (isFiltered) {
				$('#dataFilters .label-filter').addClass('hide');
				$('#dataFilters .reset-filter').removeClass('hide');
			}
			else {
				$('#dataFilters .reset-filter').addClass('hide');
				$('#dataFilters .label-filter').removeClass('hide');
			}
		},
		documentEvent: function () {
			var filterTimer;
			$(document).on('keyup', '.filter-control', function (e) {
				clearTimeout(filterTimer);
				filterTimer = setTimeout(function () {
					BaseList.draw();
				}, 500);

				BaseList.handleDataFilters();

				e.preventDefault();
			});

			$(document).on('change', '#dataFilters select.filter-control, #dataFilters input.filter-control', function (e) {
				BaseList.draw();
				BaseList.handleDataFilters();
				e.preventDefault();
			});

			$(document).on('click', '#dataFilters .filter.button', function (e) {
				e.preventDefault();
				BaseList.draw();
			});

			$(document).on('click', '#dataFilters .reset.button', function (e) {
				$('#dataFilters .filter-control').val('');
				$('#dataFilters select.filter-control').select2('destroy');
				$('#dataFilters select.filter-control').each(function (index, item) {
					let $item = $(item);
					$item.select2({
						placeholder: $item.attr('title'),
					})
				});
				$('#dataFilters .reset-filter').addClass('hide');
				$('#dataFilters .label-filter').removeClass('hide');

				BasePlugin.initSelectpicker('refresh');
				BasePlugin.initDatepicker();
				BaseList.draw();
			});
		}
	}
}();


// webpack support
if (typeof module !== 'undefined' && typeof module.exports !== 'undefined') {
	module.exports = BaseList;
}
