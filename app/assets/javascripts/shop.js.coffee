# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class Bag

  init: =>
    $(document).click =>
      if Ecwid?
        Ecwid.Cart.get (cart) =>
          localStorage.setItem("mybag", cart.productsQuantity)
      @checkLastUpdate()
      @updateBag()
    @updateBag()



  ending = (n) ->
    mod10  = n % 10
    mod100 = n % 100
    if ( mod10 is 1 and ((n % 100)!= 11) )
      return ""
    if ( mod10 in [ 2, 3, 4 ] and mod100 not in [ 12, 13, 14 ] )
      return "а"
    if ( mod10 in [ 0, 5, 6, 7, 8, 9 ] or mod100 in [ 11, 12, 13, 14 ] )
      return "ов"
    return "а"

  updateBag: ->
    count = +localStorage.getItem("mybag")
    if count is 0
      $(".header .fluid_container .bag a").text("корзина пуста")
    else
      string = "Корзина (#{count} товар#{ending(count)})"
      $(".header .fluid_container .bag a").text(string)

  showNotify: ->
    swal {   title: "Наконец-то вы вернулись!",   text: "Не забудьте проверить корзину, там остались товары с вашего прошлого посещения.",   imageUrl: "" }

  setTimestamp: ->
    last_update = Math.floor(new Date().getTime() / 1000)
    localStorage.setItem("last_update", last_update)

  checkLastUpdate: ->
    now         = Math.floor(new Date().getTime() / 1000)
    last_update = localStorage.getItem("last_update")
    week_stamp  = 60 * 60 * 24 * 7
    if last_update
      if now - last_update > week_stamp
        @showNotify()
        last_update = Math.floor(new Date().getTime() / 1000)
        localStorage.setItem("last_update", last_update)

ready = ->
  try
    window.bag.updateBag()

  if localStorage?
    if window.location.pathname.indexOf("shop") != -1
      $(".header .fluid_container").append("<div class='bag'><a data-no-turbolink href='/shop/index#!/~/cart'></a></div>")
      try
        Ecwid.OnAPILoaded.add ->
          Ecwid.OnPageLoad.add ->
            unless window.bag
              window.bag = new Bag()
              window.bag.init()
          Ecwid.OnCartChanged.add (cart) ->
            localStorage.setItem("mybag", cart.productsQuantity)
            window.bag.setTimestamp()
            window.bag.updateBag()

      catch
        console.log "Ecwid disabled"
        unless window.bag
          window.bag = new Bag()
          window.bag.init()
    else
      $(".header .fluid_container .bag").remove()




$(document).ready(ready)
$(document).on('page:load', ready)