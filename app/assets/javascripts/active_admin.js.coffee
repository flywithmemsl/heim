#= require active_admin/base
#= require ckeditor/init

$ ->
    $category = $("#blog_post_category_id")

    if $category.find("option").first().prop("selected") or $category.find("[value=1]").prop("selected")
      $category.find("[value=1]").prop("selected", true)

      $("#blog_post_text_input").show()
      $("#blog_post_illustration_input").show()
      $("#blog_post_taglist_input").show()

      $("#blog_post_gallery_input").hide()
      $("#blog_post_video_link_input").hide()
      $("#blog_post_event_input").hide()
      $("#blog_post_event_city_input").hide()

    else
      if $category.find("[value=2]").prop("selected")
        $("#blog_post_text_input").hide()
        $("#blog_post_illustration_input").hide()
        $("#blog_post_taglist_input").hide()
        $("#blog_post_gallery_input").show()
        $("#blog_post_video_link_input").hide()
        $("#blog_post_event_input").hide()
        $("#blog_post_event_city_input").hide()

      else
        if $category.find("[value=3]").prop("selected")
          $("#blog_post_text_input").hide()
          $("#blog_post_illustration_input").hide()
          $("#blog_post_taglist_input").hide()
          $("#blog_post_gallery_input").hide()
          $("#blog_post_video_link_input").show()
          $("#blog_post_event_input").hide()
          $("#blog_post_event_city_input").hide()
        else
          $("#blog_post_text_input").show()
          $("#blog_post_illustration_input").show()
          $("#blog_post_taglist_input").show()
          $("#blog_post_gallery_input").show()
          $("#blog_post_video_link_input").show()
          $("#blog_post_event_input").show()
          $("#blog_post_event_city_input").show()

  $("#blog_post_category_id").on "change", ->
    $category = $("#blog_post_category_id")

    if $category.find("option").first().prop("selected") or $category.find("[value=1]").prop("selected")
      $category.find("[value=1]").prop("selected", true)

      $("#blog_post_text_input").show()
      $("#blog_post_illustration_input").show()
      $("#blog_post_taglist_input").show()

      $("#blog_post_gallery_input").hide()
      $("#blog_post_video_link_input").hide()
      $("#blog_post_event_input").hide()
      $("#blog_post_event_city_input").hide()

    else
      if $category.find("[value=2]").prop("selected")
        $("#blog_post_text_input").hide()
        $("#blog_post_illustration_input").hide()
        $("#blog_post_taglist_input").hide()
        $("#blog_post_gallery_input").show()
        $("#blog_post_video_link_input").hide()
        $("#blog_post_event_input").hide()
        $("#blog_post_event_city_input").hide()

      else
        if $category.find("[value=3]").prop("selected")
          $("#blog_post_text_input").hide()
          $("#blog_post_illustration_input").hide()
          $("#blog_post_taglist_input").hide()
          $("#blog_post_gallery_input").hide()
          $("#blog_post_video_link_input").show()
          $("#blog_post_event_input").hide()
          $("#blog_post_event_city_input").hide()
        else
          $("#blog_post_text_input").show()
          $("#blog_post_illustration_input").show()
          $("#blog_post_taglist_input").show()
          $("#blog_post_gallery_input").show()
          $("#blog_post_video_link_input").show()
          $("#blog_post_event_input").show()
          $("#blog_post_event_city_input").show()


#   $("#blog_post_text, #blog_post_gallery").addClass('ckeditor')
#   if $('#blog_post_text, #blog_post_gallery').prev('label').length
#     $('#blog_post_text, #blog_post_gallery').prev('label').css('float','none')
#   $(".cke_chrome").css("width","76%","important")
#   $(".cke_chrome").css("margin-left","20%","important")

# $(document).ready ->
#   if $('textarea').length
#     CKEDITOR.replace( 'ckeditor' )
#
