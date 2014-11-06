# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


ready = ->

    # for city in $(".cityname")
    #   cityOffset = $(city).offset().top
    #   firstPartnerOffset = $(city).next().offset().top
    #   if cityOffset > firstPartnerOffset
    #     $(city).prev().css("margin-bottom", "30px")



$(document).ready(ready)
$(document).on('page:load', ready)