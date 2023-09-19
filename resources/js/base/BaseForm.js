/*
 * BASE FORM
 */
const BaseForm = function () {

	return {
		submit: function (form, options = {}) {
			var defaultOptions = {
					btnSubmit: null,
					btnBack: null,
					loaderModal: true,
					hideModal: true,
					drawDataTable: true,
					refreshSidebarBadge: true,
					scrollTop: false,
					swalSuccess: false,
					swalError: false,
					swalSuccessTimer: '3000',
					swalSuccessButton: {},
					swalErrorTimer: '',
					swalErrorButton: 'OK',
					redirectTo: false,
					fullCallbackSuccess: false,
					fullCallbackError: false,
					callbackSuccess: function(resp, form, options) {},
					callbackError: function(resp, form, options) {}
				},
				options = $.extend(defaultOptions, options);

			var formLoading = setTimeout(function(){
				if (options.loaderModal && form.closest('.modal').length) {
					BaseModal.loader('#'+form.closest('.modal').attr('id'), true);
				}
				else {
					BaseContent.loader(true);
				}
			}, 700);

			if (options.btnSubmit !== null && options.btnSubmit.length) {
				options.btnSubmit.prop('disabled', true)
						 .prepend('<i class="fas fa-spinner fa-spin btn-loader m-r-3"></i> ');
			}

			form.ajaxSubmit({
				success: function (resp) {
					clearTimeout(formLoading);
					if (options.fullCallbackSuccess === true) {
						if ($.isFunction(options.callbackSuccess)) {
							options.callbackSuccess(resp, form, options);
						}
					}
					else {
						BaseForm.validationMessages(resp, form);
						if (options.swalSuccess) {
							swal({
								title: resp.title,
								text: resp.message,
								icon: 'success',
								timer: options.swalSuccessTimer,
								buttons: options.swalSuccessButton,
							});
							BaseForm.defaultCallbackSuccess(resp, form, options);
						}
						else {
							$.gritter.add({
								title: resp.title != undefined ? resp.title : 'Success!',
								text: resp.message != undefined ? resp.message : 'Data saved successfull!',
								image: baseurl + '/assets/images/icon/ui/check.png',
								sticky: false,
								time: '3000'
							});
							BaseForm.defaultCallbackSuccess(resp, form, options);
						}

					}
				},
				error: function (resp) {
					clearTimeout(formLoading);
					if (options.fullCallbackError === true) {
						if ($.isFunction(options.callbackError)) {
							options.callbackError(resp, form, options);
						}
					}
					else {
						resp = resp.responseJSON;
						BaseForm.validationMessages(resp, form);
						BaseForm.defaultCallbackError(resp, form, options);
						if (resp.alert !== undefined) {
							form.find('.base-alert').remove();
							form.prepend(`
								<div class="alert alert-`+resp.alert+` fade show base-alert">
									<span class="close" data-dismiss="alert">×</span>
									`+resp.message+`
								</div>
							`).hide().fadeIn(700);
						}
						if (options.swalError) {
							swal({
								title: resp.title != undefined ? resp.title : 'Failed!',
								text: resp.message != undefined ? resp.message : 'Data failed to save!',
								icon: 'error',
								timer: options.swalErrorTimer,
								buttons: options.swalErrorButton,
							});
						}
						else {
							// console.log(resp);
							var message = resp.message != undefined ? resp.message : 'Data failed to save!';

							if (resp.exception && (resp.exception == 'Illuminate\Http\Exceptions\PostTooLargeException' || resp.exception == 'Illuminate\\Http\\Exceptions\\PostTooLargeException')) {
								message = 'Post Too Large!';
							}
							
							$.gritter.add({
								title: resp.title != undefined ? resp.title : 'Failed!',
								text: message,
								image: baseurl + '/assets/images/icon/ui/cross.png',
								sticky: false,
								time: '3000'
							});
						}
					}
				}
			});
		},
		validationMessages: function (resp, form) {
			form.find('.is-invalid').removeClass('is-invalid');
			form.find('.is-invalid-message').remove();
			form.find('.is-invalid-alert').remove();
			if (resp.message == 'The given data was invalid.') {
				resp.message = 'Data yang Anda masukkan tidak valid.'
				$.each(resp.errors, function (name, messages) {
					var names = name.split('.'),
						name  = names.reduce((all, item) => {
									all += (name == 0 ? item : '[' + item + ']');
									return all;
								}),
						field = $('[name^="'+ names[0] +'[]"], [name="'+ name +'"], [name="'+ name +'[]"]'),
						parentGroup = field.closest('.parent-group').length ? field.closest('.parent-group') : field.closest('.form-group');

					field.addClass('is-invalid');
					field.closest('.bootstrap-select').addClass('is-invalid');
					$.each(messages, function (i, message) {
						parentGroup.append('<p class="is-invalid-message text-danger my-1">'+message+'</p>');
					});
				});
				$('.is-invalid-message').hide().fadeIn(500);
			}
			else if (BaseUtil.isDev()) {
				if(resp.exception !== undefined && resp.file !== undefined && resp.line !== undefined && resp.message !== undefined) {
					BaseModal.render('body', {
						modal_id: '#alert-modal',
						modal_size: 'modal-lg',
						modal_bg: 'bg-light-danger',
						callback: function (options, modalLoadingTimer) {
							clearTimeout(modalLoadingTimer);
							$(options.modal_id+' .modal-content').html(`
								<div class="modal-header">
									<h4 class="modal-title">Error!</h4>
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								</div>
								<div class="modal-body py-5">
									<div class="alert alert-danger">
										Terjadi kesalahan!
										<p mt-5><small>*Pesan ini hanya akan ditampilkan pada masa development</small></p>
									</div>
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<td class="width-80">File : </td>
													<td>`+resp.file+`</td>
												</tr>
												<tr>
													<td class="width-80">Line : </td>
													<td>`+resp.line+`</td>
												</tr>
												<tr>
													<td class="width-80">Message : </td>
													<td>`+resp.message+`</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="modal-footer">
									<a href="javascript:;" class="btn btn-white" data-dismiss="modal">Close</a>
								</div>
							`);

							if (!$(options.modal_id).hasClass('show')) {
								$(options.modal_id).modal('show');
								BaseModal.loader(options.modal_id, false);
							}
						}
					});
				}
				else if($.type( resp.errors ) === "string") {
					var alerParent = form.find('.modal-body').length ? form.find('.modal-body').first() : form;
					alerParent.prepend(`
						<div class="alert alert-danger fade show is-invalid-alert">
							<span class="close alert-dismiss" data-dismiss="alert">×</span>
							`+resp.errors+`
							<br/>
							<p><small>*Pesan ini hanya akan ditampilkan pada masa development</small></p>
						</div>
					`).hide().fadeIn(700);
				}
			}
		},
		defaultCallbackSuccess: function (resp, form, options = {}) {
			if (resp.redirect) {
				BaseContent.replaceByUrl(resp.redirect);
				return false;
			}
			if (resp.redirectTo) {
				BaseUtil.redirect(resp.redirectTo);
				return false;
			}
			if (options.btnBack !== null && $(options.btnBack).length) {
				BaseContent.replace(options.btnBack);
				return false;
			}
			if (options.btnSubmit !== null && options.btnSubmit.length) {
				options.btnSubmit.prop('disabled', false)
						.find('.btn-loader').remove();
			}
			if (options.loaderModal && form.closest('.modal').length) {
				BaseModal.loader('#'+form.closest('.modal').attr('id'), false);
			} else {
				BaseContent.loader(false);
			}
			if (options.hideModal && form.closest('.modal').length) {
				form.closest('.modal').modal('hide');
			}
			if (options.drawDataTable) {
				BaseList.draw();
			}
			if (options.refreshSidebarBadge && resp.refreshSidebarNames) {
				BaseUtil.sidebarBadge({
					data: {
						_token: BaseUtil.getToken,
						names: resp.refreshSidebarNames,
					}
				});
			}
			if (resp.refreshUsserNotification === true) {
				BaseUtil.userNotification();
			}
			if (options.redirectTo !== false) {
				BaseUtil.redirect(options.redirectTo);
			}
			if ($.isFunction(options.callbackSuccess)) {
				options.callbackSuccess(resp, form, options);
			}
			if (options.scrollTop) {
				$('body,html').animate({scrollTop: '5px'}, 500).animate({scrollTop: 0}, 800);
			}
		},
		defaultCallbackError: function (resp, form, options = {}) {
			if (options.btnSubmit !== null && options.btnSubmit.length) {
				options.btnSubmit.prop('disabled', false)
						.find('.btn-loader').remove();
			}
			if (options.loaderModal && form.closest('.modal').length) {
				BaseModal.loader('#'+form.closest('.modal').attr('id'), false);
			} else {
				BaseContent.loader(false);
			}
			if ($.isFunction(options.callbackError)) {
				options.callbackError(resp, form);
			}
			var firstError = form.find('.is-invalid').first();
			if (firstError.length && form.closest('.modal').length == 0) {
				$('body,html').animate({scrollTop: firstError.position().top}, 500);
			}
		},
		delete: function (url, options = {}) {
			var defaultOptions = {
					swalSuccess: false,
					swalError: false,
				},
				options = $.extend(defaultOptions, options);

			var contentLoading = setTimeout(function () {
				BaseContent.loader(true);
			}, 700);

			$.ajax({
				url: url,
				method: 'POST',
				data: {
					_token: BaseUtil.getToken(),
					_method: 'DELETE'
				},
				success: function (resp) {
					clearTimeout(contentLoading);
					BaseContent.loader(false);
					if (options.swalSuccess) {
						swal({
							title: resp.title != undefined ? resp.title : 'Success!',
							text: resp.message != undefined ? resp.message : 'Data deleted successfully!',
							icon: 'success',
							timer: 3000,
							buttons: {},
						});
					}
					else {
						$.gritter.add({
							title: resp.title != undefined ? resp.title : 'Success!',
							text: resp.message != undefined ? resp.message : 'Data deleted successfully!',
							image: baseurl + '/assets/images/icon/ui/check.png',
							sticky: false,
							time: '3000'
						});
					}
					BaseList.draw();
					BaseUtil.sidebarBadge();

				},
				error: function (resp) {
					clearTimeout(contentLoading);
					BaseContent.loader(false);
					if (options.swalError) {
						swal({
							title: resp.title != undefined ? resp.title : 'Failed!',
							text: resp.message != undefined ? resp.message : 'Data failed to delete!',
							icon: 'error',
							// timer: 3000,
						});
					}
					else {
						$.gritter.add({
							title: resp.title != undefined ? resp.title : 'Failed!',
							text: resp.message != undefined ? resp.message : 'Data failed to delete!',
							image: baseurl + '/assets/images/icon/ui/cross.png',
							sticky: false,
							time: '3000'
						});
					}
				}
			});
		},
		activate: function (url, status, options = {}) {
			var defaultOptions = {
					swalSuccess: false,
					swalError: false,
				},
				options = $.extend(defaultOptions, options);

			var contentLoading = setTimeout(function () {
				BaseContent.loader(true);
			}, 700);

			$.ajax({
				url: url,
				method: 'POST',
				data: {
					_token: BaseUtil.getToken(),
					_method: 'POST',
					status: status == 1 ? 0 : 1,
				},
				success: function (resp) {
					clearTimeout(contentLoading);
					BaseContent.loader(false);
					if (options.swalSuccess) {
						swal({
							title: resp.title != undefined ? resp.title : 'Success!',
							text: resp.message != undefined ? resp.message : 'Data has been activated successfully!',
							icon: 'success',
							timer: 3000,
							buttons: {},
						});
					}
					else {
						$.gritter.add({
							title: resp.title != undefined ? resp.title : 'Success!',
							text: resp.message != undefined ? resp.message : 'Data has been activated successfully!',
							image: baseurl + '/assets/images/icon/ui/check.png',
							sticky: false,
							time: '3000'
						});
					}
					BaseList.draw();
					BaseUtil.sidebarBadge();

				},
				error: function (resp) {
					clearTimeout(contentLoading);
					BaseContent.loader(false);
					if (options.swalError) {
						swal({
							title: resp.title != undefined ? resp.title : 'Failed!',
							text: resp.message != undefined ? resp.message : 'Data failed to activation!',
							icon: 'error',
							// timer: 3000,
						});
					}
					else {
						$.gritter.add({
							title: resp.title != undefined ? resp.title : 'Failed!',
							text: resp.message != undefined ? resp.message : 'Data failed to activation!',
							image: baseurl + '/assets/images/icon/ui/cross.png',
							sticky: false,
							time: '3000'
						});
					}
				}
			});
		},
        saveTempFiles: function (el, event, options=[]) {
            var el = $(el),
                form = el.closest('form'),
                files = event.target.files;
                
            var defaultOptions = {
                    parentClass: el.data('container') ?? 'form-group',
                    maxFile: el.data('max-file') ?? 1, //1:Singgle, 2,...:Multiple
                    maxSize: el.data('max-size') ?? 5024, //5mb
                    type: el.data('container') ?? null,
                    callbackSuccess: false,
                    callbackError: false,
                },
                options = $.extend(defaultOptions, options);

            var parent = el.closest('.'+options.parentClass);
            if (!parent.length) { 
                parent = el.closest('.custom-file').parent();
            }
            if ((parent.find('.progress-container:not(.error-uploaded)').length >= options.maxFile) || (files.length > options.maxFile)) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Opps',
                    text: 'Maximal File ' + options.maxFile,
                    showConfirmButton: false,
                    // timer: 1500
                });
                el.val("");
                el.parent().find('.custom-file-label').text('Choose file');
                return false;
            }

            if (files.length) {
                var filesTooBig = [];
                $.each(files, function (index, file) {
                    if (file && file.size && (Math.round((file.size / 1024)) >= options.maxSize)) {
                        filesTooBig.push(file);
                    }
                });
                if (filesTooBig.length) {
                    var showSize = function (bytes) {
                        if (bytes === 0) {
                            return '0 Bytes';
                        }
                        else {
                            var k = 1024;
                            var dm = 2;
                            var sizes = ['KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
                            var i = Math.floor(Math.log(bytes) / (Math.log(k)));
                            return parseFloat((bytes / Math.pow(k, i)).toFixed(dm)) + ' ' + sizes[i];
                        }
                    }

                    var fileNames = '<ul class="pl-20px text-left">';
                    $.each(filesTooBig, function (index, file) {
                        fileNames = fileNames + '<li>' + file.name + ' (' + (showSize(file.size / 1024)) + ')' + ' </li>';
                    })
                    fileNames = fileNames + '</ul>';
                    Swal.fire({
                        icon: 'warning',
                        title: 'Opps',
                        html: 'Maximum File Size is ' + showSize(options.maxSize) + '<br>Please check file fize:' + fileNames,
                        confirmButtonText: 'OKE',
                    });
                    if (parent.find('.success-uploaded').length == 0) {
                        el.val("");
                        parent.find('.custom-file-label').text('Choose file');
                    }
                }
                else {
                    $.each(files, function (index, file) {
                        if (file && file.size) {
                            var fmData = new FormData();
                            var uniqueid = Math.floor(Math.random() * 26) + Date.now();
                            fmData.append('_token', BaseUtil.getToken());
                            fmData.append('file', file);
                            fmData.append('type', options.type ? options.type : null);
                            fmData.append('uniqueid', uniqueid);

                            parent.find('.custom-file-label').text(files.length + ' Files Attached');

                            $.ajax({
                                url: BaseUtil.getUrl('ajax/saveTempFiles'),
                                type: 'POST',
                                data: fmData,
                                contentType: false,
                                processData: false,
                                // async: false,
                                beforeSend: function (e) {
                                    parent.append(`
                                        <div class="progress-container w-100" data-uid="` + uniqueid + `">
                                            <div class="progress uploading mt-2">
                                                <div class="progress-bar bar-` + uniqueid +` progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">0%</div>
                                            </div>
                                        </div>
                                    `);
                                },
                                xhr: function (resp) {
                                    var xhr = new window.XMLHttpRequest();
                                    xhr.upload.addEventListener("progress", function (evt) {
                                        if (evt.lengthComputable) {
                                            var percentComplete = parseInt((evt.loaded / evt.total) * 100);
                                            form.find('button[type="submit"]').attr('disabled', 'disabled');

                                            form.find('.progress-bar.bar-' + uniqueid)
                                                .attr('aria-valuenow', percentComplete)
                                                .css('width', percentComplete + '%')
                                                .text(percentComplete + '%');

                                        }
                                    }, false);

                                    return xhr;
                                },
                                success: function (resp) {
                                    if ($.isFunction(options.callbackSuccess)){
                                        options.callback(resp, el, uniqueid);
                                    }
                                    var icon = 'far fa-file-alt';
                                    if (resp.file.file_type == 'pdf') {
                                        icon = 'text-danger far fa-file-pdf';
                                    }
                                    else if(resp.file.file_type == 'xlsx') {
                                        icon = 'text-success far fa-file-excel';
                                    }
                                    else if(resp.file.file_type == 'jpg' || resp.file.file_type == 'png') {
                                        icon = 'text-warning far fa-file-image';
                                    }
                                    else if(resp.file.file_type == 'ppt') {
                                        icon = 'text-danger far fa-file-powerpoint';
                                    }
                                    else if(resp.file.file_type == 'docx') {
                                        icon = 'text-primary far fa-file-word';
                                    }
                                    parent.find('.uploaded').val(1);
                                    parent.find('.progress-container[data-uid="'+uniqueid+'"]')
                                        .prepend(`
                                            <div class="alert alert-custom alert-light fade show py-2 px-4 mb-0 mt-2 success-uploaded" role="alert">
                                                <div class="alert-icon">
                                                    <i class="`+icon+`"></i>
                                                </div>
                                                <div class="alert-text text-left">
                                                    <input type="hidden" name="`+el.data('name')+`[temp_files_ids][]" value="`+ resp.file.id +`">
                                                    <div>Upload File:</div>
                                                    <a href="`+ resp.file.file_url +`" target="_blank" class="text-primary">`+ resp.file.file_name +`</a>
                                                </div>
                                                <div class="alert-close">
                                                    <button type="button" class="close base-form--remove-temp-files" data-toggle="tooltip" title="Remove">
                                                        <span aria-hidden="true">
                                                            <i class="ki ki-close"></i>
                                                        </span>
                                                    </button>
                                                </div>
                                            </div>
                                        `);
                                    parent.find('.progress-container[data-uid="'+uniqueid+'"] .progress')
                                        .removeClass('mt-2');
                                    form.find('button[type="submit"]').removeAttr('disabled');
                                    form.find('.progress-bar.bar-' + uniqueid)
                                        .removeClass('progress-bar-striped')
                                        .text('Done');

                                    // var myEvent = window.attachEvent || window.addEventListener;
                                    // var chkevent = window.attachEvent ? 'onbeforeunload' : 'beforeunload';
                                    // myEvent(chkevent, function (e) { // For >=IE7, Chrome, Firefox
                                    //     var confirmationMessage = 'Are you sure to leave the page?'; // a space
                                    //     (e || window.event).returnValue = confirmationMessage;
                                    //     return confirmationMessage;
                                    // });
                                    parent.find('.custom-file-label').text('Add file');
                                    BasePlugin.initTooltipPopover();

                                    if ((parent.find('.progress-container').length >= options.maxFile) || (files.length > options.maxFile)) {
                                        el.prop('disabled', true);
                                        parent.find('.custom-file-label').text('Uploaded');
                                    }
                                },
                                error: function (resp) {
                                    parent.find('.progress-container[data-uid="'+uniqueid+'"]').remove();
                                    parent.append(`
                                            <div class="alert alert-custom alert-light-danger fade show py-2 px-4 my-2 error-uploaded" role="alert">
                                                <div class="alert-icon">
                                                    <i class="flaticon-warning"></i>
                                                </div>
                                                <div class="alert-text text-left">Error Upload File: `+ file.name +`</div>
                                                <div class="alert-text text-left">
                                                    <div>Upload File:</div>
                                                    <a href="javascript:;" class="text-primary">`+ file.name +`</a>
                                                </div>
                                                <div class="alert-close">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                            <span aria-hidden="true">
                                                                <i class="ki ki-close"></i>
                                                            </span>
                                                        </button>
                                                </div>
                                            </div>
                                        `);
                                    form.find('button[type="submit"]').removeAttr('disabled');
                                    form.find('.progress-bar.bar-' + uniqueid)
                                        .removeClass('progress-bar-striped')
                                        .text('Error');
                                    if (parent.find('.success-uploaded').length == 0) {
                                        parent.find('.uploaded').val('');
                                    }
                                    parent.find('.custom-file-label').text('Choose file');
                                },
                            });
                        }
                    });

                }
            }
        },
        removeTempFiles: function (el) {
            var me = $(el),
                container = me.closest('.progress-container'),
                parent = container.parent();
            
            me.tooltip('hide');
            parent.find('input[type="file"]').val('');
            parent.find('.custom-file-label').text('Choose file');
            if (parent.find('.success-uploaded').length == 0) {
                parent.find('.uploaded').val('');
            }
            container.remove();
            BasePlugin.initTooltipPopover();
        },
		approval: function () {
            $(document).on('click', '.sign', function(e) {
                var id = $(this).data('idx');
                var url = $(this).data('url');
                var redirect = $(this).data('redirect');
                var jabatan = $(this).data('jabatan');
                var name = $(this).data('name');
                var note = typeof($(this).data('note')) != "undefined" ? $(this).data('note') : false;

                swal({
                    title: 'Apakah Anda yakin ?',
                    text: 'akan menandatangani '+name+' tersebut..!',
                    icon: 'warning',
                    buttons: {
                        cancel : 'Batal',
                        confirm : {text:'Setujui',className:'btn-primary'},
                        revisi : {text:'Revisi',className:'btn-danger'},
                    }
                }).then(function (result) {
                    if (result === true) {
                        BaseContent.loader(true);
                        $.ajax({
                            type: "POST",
                            url: url,
                            data: {
                                '_token' : BaseUtil.getToken(),
                                'id' : id,
                                'jabatan' : jabatan,
                                'status' : 1,
                            },
                            success: function (response) {
                                BaseContent.loader(false);
                                swal({
                                    title: response.title,
                                    text: name+' berhasil di Approve',
                                    icon: 'success',
                                    timer: '2000',
                                    buttons: false,
                                }).then(() => {
                                    // location.reload();
                                    location.href = redirect;
                                })
                            }
                        });
                    }else if(result === 'revisi') {
                        BaseContent.loader(true);
                        if (note == true) {
                                Swal.mixin({
                                    showCancelButton: true,
                                    cancel : 'Batal',
                                }).queue([
                                    {
                                        title: 'Catatan Revisi',
                                        input: 'textarea',
                                        confirmButtonText: 'Submit',
                                    },
                                ]).then((result) => {
                                    if (result.value) {
                                        BaseContent.loader(true);
                                        $.ajax({
                                            type: "POST",
                                            url: url,
                                            data: {
                                                '_token' : BaseUtil.getToken(),
                                                'id' : id,
                                                'jabatan' : jabatan,
                                                'status' : 2,
                                                'note' : result.value[0]
                                            },
                                            success: function (response) {
                                                BaseContent.loader(false);
                                                swal({
                                                    title: response.title,
                                                    text: name+' berhasil disimpan untuk revisi',
                                                    icon: 'info',
                                                    timer: '2000',
                                                    buttons: false,
                                                }).then(() => {
                                                    location.href = redirect;
                                                })
                                            }
                                        });
                                    } else {
										BaseContent.loader(false);
									}
                                });
                        }else{
                            $.ajax({
                                type: "POST",
                                url: url,
                                data: {
                                    '_token' : BaseUtil.getToken(),
                                    'id' : id,
                                    'jabatan' : jabatan,
                                    'status' : 2,
                                },
                                success: function (response) {
                                    BaseContent.loader(false);
                                    swal({
                                        title: response.title,
                                        text: name+' berhasil disimpan untuk revisi',
                                        icon: 'info',
                                        timer: '2000',
                                        buttons: false,
                                    }).then(() => {
                                        location.href = redirect;
                                    })
                                }
                            });
                        }
                    }
                });
            });

            $(document).on('click', '.sign-pin', function(e) {
                var url = $(this).data('url');
                var redirect = $(this).data('redirect');
                var id = $(this).data('idx');
                var jabatan = $(this).data('jabatan');
                var checker = $(this).data('checker');
                var name = $(this).data('name');
                var note = typeof($(this).data('note')) != "undefined" ? $(this).data('note') : false;

                swal({
                    title: 'Apakah Anda yakin ?',
                    text: 'akan menandatangani '+name+' tersebut..!',
                    icon: 'warning',
                    buttons: {
                        cancel : 'Batal',
                        confirm : {text:'Setujui',className:'btn-primary'},
                        revisi : {text:'Revisi',className:'btn-danger'},
                    }
                }).then(function (result) {
                    if (result === true) {
                        Swal.fire({
                            title: 'Masukkan PIN Anda',
                            input: 'password',
                            inputAttributes: {
                                autocapitalize: 'off'
                            },
                            showCancelButton: true,
                            confirmButtonText: 'Submit',
                            showLoaderOnConfirm: true,
                            preConfirm: function preConfirm(pin) {
                                return fetch(checker, {
                                        method: 'PUT',
                                        headers: {
                                        'X-CSRF-TOKEN': BaseUtil.getToken(),
                                        'Content-Type': 'application/x-www-form-urlencoded'
                                        },
                                        body: "pin=" + pin
                                    }).then(function (response) {
                                        if (!response.ok) {
                                        return response.text().then(function (err) {
                                            return Promise.reject(err);
                                        });
                                        } else {
                                        return response.json();
                                        }
                                    })["catch"](function (error) {
                                        Swal.showValidationMessage(error);
                                    });
                            },
                            allowOutsideClick: () => !Swal.isLoading()
                        }).then(function (result) {
                            if (result.value) {
                                BaseContent.loader(true);
                                $.ajax({
                                    type: "POST",
                                    url: url,
                                    data: {
                                        '_token' : BaseUtil.getToken(),
                                        'id' : id,
                                        'jabatan' : jabatan,
                                        'status' : 1,
                                    },
                                    success: function (response) {
                                        BaseContent.loader(false);
                                        swal({
                                            title: response.title,
                                            text: name+' berhasil di Approve',
                                            icon: 'success',
                                            timer: '2000',
                                            buttons: false,
                                        }).then(() => {
                                            // location.reload();
                                            location.href = redirect;
                                        })
                                    },
                                    error: function error(_error) {
                                        Swal.fire({
                                            icon: 'danger',
                                            title: 'Tanda Tangan Gagal',
                                            showConfirmButton: false,
                                            timer: '2000',
                                        }).then(function (result) {

                                        });
                                    }
                                });
                            }
                        })

                    } else if(result === 'revisi') {
                        if (note == true) {
                            Swal.mixin({
                                showCancelButton: true,
                                cancel : 'Batal',
                                progressSteps: ['1', '2']
                            }).queue([
                                {
                                    title: 'Catatan Revisi',
                                    input: 'textarea',
                                    confirmButtonText: 'Selanjutnya',
                                },
                                {
                                    title: 'Masukan PIN Anda',
                                    input: 'password',
                                    inputAttributes: {
                                        autocapitalize: 'off'
                                    },
                                    confirmButtonText: 'Submit',
                                    showLoaderOnConfirm: true,
                                    preConfirm: function preConfirm(pin) {
                                        return fetch(checker, {
                                                method: 'PUT',
                                                headers: {
                                                'X-CSRF-TOKEN': BaseUtil.getToken(),
                                                'Content-Type': 'application/x-www-form-urlencoded'
                                                },
                                                body: "pin=" + pin
                                            }).then(function (response) {
                                                if (!response.ok) {
                                                return response.text().then(function (err) {
                                                    return Promise.reject(err);
                                                });
                                                } else {
                                                return response.json();
                                                }
                                            })["catch"](function (error) {
                                                Swal.showValidationMessage(error);
                                            });
                                    },
                                    allowOutsideClick: () => !Swal.isLoading()
                                },
                            ]).then((result) => {
                                if (result.value) {
                                    BaseContent.loader(true);
                                    $.ajax({
                                        type: "POST",
                                        url: url,
                                        data: {
                                            '_token' : BaseUtil.getToken(),
                                            'id' : id,
                                            'jabatan' : jabatan,
                                            'status' : 2,
                                            'note' : result.value[0]
                                        },
                                        success: function (response) {
                                            BaseContent.loader(false);
                                            swal({
                                                title: response.title,
                                                text: name+' berhasil disimpan untuk revisi',
                                                icon: 'info',
                                                timer: '2000',
                                                buttons: false,
                                            }).then(() => {
                                                location.href = redirect;
                                            })
                                        }
                                    });
                                }
                            });
                        }else{
                            Swal.fire({
                                title: 'Masukkan PIN Anda',
                                input: 'password',
                                inputAttributes: {
                                    autocapitalize: 'off'
                                },
                                showCancelButton: true,
                                confirmButtonText: 'Submit',
                                showLoaderOnConfirm: true,
                                preConfirm: function preConfirm(pin) {
                                    return fetch(checker, {
                                            method: 'PUT',
                                            headers: {
                                            'X-CSRF-TOKEN': BaseUtil.getToken(),
                                            'Content-Type': 'application/x-www-form-urlencoded'
                                            },
                                            body: "pin=" + pin
                                        }).then(function (response) {
                                            if (!response.ok) {
                                            return response.text().then(function (err) {
                                                return Promise.reject(err);
                                            });
                                            } else {
                                            return response.json();
                                            }
                                        })["catch"](function (error) {
                                            Swal.showValidationMessage(error);
                                        });
                                },
                                allowOutsideClick: () => !Swal.isLoading()
                            }).then(function (result) {
                                if (result.value) {
                                    BaseContent.loader(true);
                                    $.ajax({
                                        type: "POST",
                                        url: url,
                                        data: {
                                            '_token' : BaseUtil.getToken(),
                                            'id' : id,
                                            'jabatan' : jabatan,
                                            'status' : 2,
                                        },
                                        success: function (response) {
                                            BaseContent.loader(false);
                                            swal({
                                                title: response.title,
                                                text: name+' berhasil disimpan untuk revisi',
                                                icon: 'info',
                                                timer: '2000',
                                                buttons: false,
                                            }).then(() => {
                                                location.href = redirect;
                                            })
                                        }
                                    });
                                }
                            });
                        }
                    }
                });
            });
		},
        documentEvent: function () {
            $(document).on('change', 'input.base-form--save-temp-files', function (e) {
                BaseForm.saveTempFiles(this, e);
            });

            $(document).on('click', '.base-form--remove-temp-files', function (e) {
                // e.preventDefault();
                BaseForm.removeTempFiles(this);
            });

            $(document).on('change', '.custom-file input[type="file"]:not(.base-form--save-temp-files)', function (e) {
                if (e.target.files.length) {
                    $(this).next('.custom-file-label').html(e.target.files[0].name);
                }
            });
        }
	}
}();

// webpack support
if (typeof module !== 'undefined' && typeof module.exports !== 'undefined') {
    module.exports = BaseForm;
}
