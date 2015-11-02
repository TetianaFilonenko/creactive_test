# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $(document).on 'ready page:load', ->
    $.ajax '/test_ajax/',
      type: "GET",
      dataType: "JSON",
      asnyc: false,
      success: (data) ->
        console.log(data)
        $('#last_post').text(data.text)