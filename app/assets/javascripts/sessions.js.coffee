# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

login = ->
  $("#toggle").click ->
    $("#admin").toggle()
    
$(document).ready(login)
$(document).on('page:load', login)
$(document).on('page:restore', login)