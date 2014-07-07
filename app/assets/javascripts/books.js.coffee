# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document)
  .on('click', "[data-object~='checkout']", () ->
    book_id = $(this).data('book-id')
    $('#book_id').val(book_id)
    $('#myModal').modal()
    false
  )
  .on('click', "[data-object~='perform-checkout']", () ->
    $("#checkout-form").submit()
    false
  )
