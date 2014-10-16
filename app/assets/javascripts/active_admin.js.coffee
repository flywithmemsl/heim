#= require active_admin/base
#= require ckeditor/init

$ ->
  $("#blog_post_text, #blog_post_gallery").addClass('ckeditor')
  if $('#blog_post_text, #blog_post_gallery').prev('label').length
    $('#blog_post_text, #blog_post_gallery').prev('label').css('float','none')
  $(".cke_chrome").css("width","76%","important")
  $(".cke_chrome").css("margin-left","20%","important")

# $(document).ready ->
#   if $('textarea').length
#     CKEDITOR.replace( 'ckeditor' )
#
