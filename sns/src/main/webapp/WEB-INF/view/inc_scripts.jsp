<!-- Javascript -->
<!-- Required Js -->
<script src="https://ableproadmin.com/assets/js/plugins/popper.min.js"></script>
<script src="https://ableproadmin.com/assets/js/plugins/simplebar.min.js"></script>
<script src="https://ableproadmin.com/assets/js/plugins/bootstrap.min.js"></script>
<script src="https://ableproadmin.com/assets/js/fonts/custom-font.js"></script>
<script src="https://ableproadmin.com/assets/js/pcoded.js"></script>
<script src="https://ableproadmin.com/assets/js/plugins/feather.min.js"></script>
<!-- bootstrap-datepicker -->
<script src="https://ableproadmin.com/assets/js/plugins/datepicker-full.min.js"></script>

<script>
	layout_change('light');
</script>
<script>
	layout_theme_contrast_change('false');
</script>
<script>
	change_box_container('false');
</script>
<script>
	layout_caption_change('true');
</script>
<script>
	layout_rtl_change('false');
</script>
<script>
	preset_change("preset-1");
</script>

<!-- [Page Specific JS] start -->
<!-- datatable Js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.13.8/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.8/js/dataTables.bootstrap5.min.js"></script>
<!-- Buttons -->
<script src="https://cdn.datatables.net/buttons/2.4.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.colVis.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.html5.min.js"></script>
<script>
	// [ DOM/jquery ]
	$('#datatable').DataTable( {
	    dom: 'Bfrtip',
        buttons: [
          {
            extend: 'copyHtml5',
            exportOptions: {
              columns: [0, ':visible']
            }
          },
          {
            extend: 'excelHtml5',
            exportOptions: {
              columns: ':visible'
            }
          },
          {
            extend: 'pdfHtml5',
            exportOptions: {
              columns: [0, 1, 2, 5]
            }
          },
          'colvis'
        ]
      });
</script>
<!-- [Page Specific JS] end -->