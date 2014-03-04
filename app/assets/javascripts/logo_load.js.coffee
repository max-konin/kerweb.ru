$(window).load ->
  $('#logo_table').fadeIn(500)
  return

parallax = ->
  scrolled = $(window).scrollTop()
  $("#logo-bg").css "bottom", -(scrolled * 0.15) + "px"
  return

$(window).scroll (e) ->
  parallax()
  return