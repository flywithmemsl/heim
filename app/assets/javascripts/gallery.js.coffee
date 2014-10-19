

ready = ->
  if $(".grid").length
    options =
      srcNode: 'img'
      margin: '8px'
      width: '290px'
      max_width: ''
      resizable: true
      transition: 'all 0.5s ease'
    $(".grid").gridify options, ->

      top = parseFloat($('.grid img').last().css("top"))
      height = parseFloat($('.grid img').last().height())
      $('.grid').css("height", top+height+"px")




$(document).ready(ready)
$(document).on('page:load', ready)