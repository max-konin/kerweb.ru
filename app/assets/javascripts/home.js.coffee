resize = ->
  height = ($(window).height() - 140) / 2
  width = ($(window).width() - 200) / 2
  $('.js_height td').css('height', height)
  $('.js_width').css('width', width)
  $('#logo_arrows').css('width',width - 222)
ready = ->
  resize()
  $(window).resize resize
$(document).ready ready
