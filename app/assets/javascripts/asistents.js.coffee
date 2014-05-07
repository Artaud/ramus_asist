# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


tab = ->
  $('#asistents').dataTable({
    bStateSave: true
    oLanguage: 
      oPaginate:
        sFirst: "<<"
        sLast: ">>"
        sPrevious: ""
        sNext: ""
      sProcessing: "načítám"
      sInfo: "Zobrazuji záznamy _START_ - _END_ (z celkových _TOTAL_)"
      sInfoFiltered: " - filtrováno _MAX_ záznamů"
      sSearch: "Hledání:"
      sLengthMenu: '<select>'+
        '<option value="10">10</option>'+
        '<option value="20">20</option>'+
        '<option value="30">30</option>'+
        '<option value="40">40</option>'+
        '<option value="50">50</option>'+
        '<option value="-1">\u221e</option>'+
        '</select> řádků na stránce'
  })


$(document).ready(tab)
$(document).on('page:load', tab)
$(document).on('page:restore', tab)

    