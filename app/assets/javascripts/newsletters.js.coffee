# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $(document).bind "ajaxSuccess", "form.newsletter_form", (event, xhr, settings) ->
    $newsletter_form = $(event.data)
    $error_container = $("#error_explanation", $newsletter_form)
    $error_container_ul = $("ul", $error_container)
    $("<p class='alert alert-success'>").html("Newsletter request received for "+xhr.responseJSON.email).appendTo $newsletter_form
    if $("li", $error_container_ul).length
      $("li", $error_container_ul).remove()
      $error_container.hide()

  $(document).bind "ajaxError", "form.newsletter_form", (event, jqxhr, settings, exception) ->
    $newsletter_form = $(event.data)
    $error_container = $("#error_explanation", $newsletter_form)
    $error_container_ul = $("ul", $error_container)
    $error_container.show()  if $error_container.is(":hidden")
    $.each jqxhr.responseJSON, (index, message) ->
      $("<li>").html(message).appendTo $error_container_ul
