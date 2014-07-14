@ready = () ->
  $('#example').dataTable(
    "aoColumnDefs": [
      "bSortable": false
      "aTargets": [ "no-sort" ]
    ]
  )

$(document).ready(ready)
$(document)
  .on('page:load', ready)
