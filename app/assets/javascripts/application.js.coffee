#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require slick
#= require jquery-fullscreen/jquery.fullscreen-min.js
#= require chosen-jquery
#= require gridify
#= require jquery.nyroModal.custom
#= require perfect-scrollbar
#= require_tree .

timeOut = 0
resize = () ->
   if $(window).height() > 400
      $(".fullscreen, .fullscreen_promo").css("height", $(window).height())
      $(".fullscreen .logo").css("margin-top", "0px")


ready = ->


  meta = document.createElement('meta')
  meta.property = "og:image"
  meta.content = $(".header+div+div img").first().attr("src")
  document.getElementsByTagName('head')[0].appendChild(meta)

  $('.blog_post .slider').perfectScrollbar()


  if navigator.userAgent.match(/(iPod|iPhone|iPad)/) && navigator.userAgent.match(/AppleWebKit/)
    # $(".fullscreen, .fullscreen_promo").css("background-size", "auto 100%")
    $(".fullscreen, .fullscreen_promo").css("background-attachment", "scroll")


  if $(".addvklink").length
    $(".addvklink").attr("href", "http://vk.com/share.php?url=#{window.location.href}")
  if $(".addfblink").length
    $(".addfblink").attr("href", "http://www.facebook.com/sharer/sharer.php?u=#{window.location.href}")



  for link in $("a")
    if $(link).attr("href") is window.location.pathname
      $(link).addClass("active")
      if $(link).parent().prop("tagName") is "LI"
        $(link).parent().addClass("active")


  resize()
      # ($(window).height()-190)/2)

  if $(".scrolldown").length
    $(window).on "scroll", ->
      $(".scrolldown").fadeOut(1000)

  $(".search input").on "change", ->
    unless $(this).val() is ""
      $(this).addClass("filled")
    else
      $(this).removeClass("filled")

  $(".toggle_magazines").click -> $(".magazines").slideToggle()


  margin = $(window).height() - ($(".footer").offset().top + $(".footer").height())

  if margin > 0
    $(".footer").css("margin-top", "+=#{margin+25}px")

  $(window).on 'resize', ->
    clearTimeout(timeOut)
    timeOut = setTimeout ->
      do resize
    ,200


$(document).ready(ready)
$(document).on('page:load', ready)