


ready = ->

  $(".chosen-select").chosen
    disable_search: true
    width: "100%"



  $(".city form select").on "change", ->
    $(".city form").submit()




$(document).ready(ready)
$(document).on('page:load', ready)