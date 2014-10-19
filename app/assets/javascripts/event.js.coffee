


ready = ->

  $(".chosen-select").chosen
    disable_search: true



  $(".city form select").on "change", ->
    $(".city form").submit()




$(document).ready(ready)
$(document).on('page:load', ready)