# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


ready = ->

  $(".main .promo_blocks").slick
    arrows: true
    dots: true
    fade: true

  unless $(".promo_blog_block").length
    $(".main .previews").slick
      arrows: false
      dots: true
      slidesToShow: 2
      slidesToScroll: 2


$(document).ready(ready)
$(document).on('page:load', ready)