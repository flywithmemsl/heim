ready = ->


  if $(".taglist").length
    taglist = $(".taglist").text()
    newTaglist = ""
    for tag, i in arr = taglist.split(", ")
      newTaglist += "<a href='/blog/search?q=#{tag}'>#{tag}</a>"
      unless i is arr.length-1
        newTaglist += ",&nbsp;"



    $(".taglist").html(newTaglist)

  if $(".slideshow").length
    $(".slideshow img").unwrap().wrap("<div class='slide'></div>")
    unless $(".slide").parent().hasClass("slideshow")
      $(".slide").unwrap()
    unless $(".slide").parent().hasClass("slideshow")
      $(".slide").unwrap()




    setUpSlider = () ->
      $(".slideshow .counter").remove()
      $(".slideshow").slick
        arrows: false
        fade: true
        dots: true
        onAfterChange: ->
          $(".slideshow .counter .num").text($(".slideshow").slickCurrentSlide()+1)
          if $(document).fullScreen()
            $(".slick-active img").fullScreen(true)
      document.onkeydown = (evt) ->
        evt = evt || window.event
        switch evt.keyCode
          when 37 then $(".slideshow").slickPrev()
          when 39 then $(".slideshow").slickNext()

      $(".slideshow").append("<div class='counter'><span class='num'>1</span> / <span class='of'>5</span></div>")
      $(".slideshow .counter .of").text($(".slick-slide").length)
      $(".slideshow .counter .num").text($(".slideshow").slickCurrentSlide()+1)

      $(".slick-slide img").click ->
        $(".slideshow").slickNext()



    do setUpSlider

    $(document).bind "fullscreenchange", ->
      unless $(document).fullScreen()
        location.reload()





  for p in $(".post_content p")
    if $(p).children().length == $(p).find("img").length
      $(p).addClass("forGallery")
      $(p).find("img").wrap("<div class='slide'></div>")


  $(".forGallery").slick
    arrows: false
    fade: true
    dots: true





  $(".blog_post .content_header .goback").click ->
    if window.history.back()
      return false

  $(".blog_post .content_header .open_fullscreen").click ->
    $(".slick-active img").fullScreen(true)
    return false




$(document).ready(ready)
$(document).on('page:load', ready)
