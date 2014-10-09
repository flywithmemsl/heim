#= require active_admin/base
#= require ckeditor/init

$ ->
  $("textarea").addClass('ckeditor')
  if $('textarea').prev('label').length
    $('textarea').prev('label').css('float','none')
  $(".cke_chrome").css("width","76%","important")
  $(".cke_chrome").css("margin-left","20%","important")

# $(document).ready ->
#   if $('textarea').length
#     CKEDITOR.replace( 'ckeditor' )
#
