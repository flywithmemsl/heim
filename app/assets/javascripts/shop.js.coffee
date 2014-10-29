# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




ready = ->
  if $(".shop_slideshow").length
    $(".shop_slideshow img").wrap("<div class='slide'></div>")
    $(".shop_slideshow").slick
      arrows: false
      fade: true
      dots: true

    Ecwid.OnAPILoaded.add ->
      Ecwid.OnPageLoad.add ->
        if ((window.location.hash == "") or (window.location.hash[3] == "c"))
          $(".shop_slideshow").slideDown()
        else
          $(".shop_slideshow").slideUp()




$(document).ready(ready)
$(document).on('page:load', ready)