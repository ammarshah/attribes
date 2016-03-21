$ ->
  $('#items').on('cocoon:before-insert', ->
    if $("#items").find(".nested-fields").length == 0
      $("#total").show()
    return
  ).on 'cocoon:after-remove', ->
    if $("#items").find(".nested-fields").length == 0
      $("#total").hide()
    return