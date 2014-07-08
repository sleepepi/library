//cdn.datatables.net/1.10.0/js/jquery.dataTables.js

$(document).ready( function () {
    $('#example').dataTable({
      "aoColumnDefs": [ {
        "bSortable": false,
        "aTargets": [ "no-sort" ]
      }]
    });
} );
