$(window).load ->
  $('#logo_table').fadeIn(500)
  return

parallax = ->
  scrolled = $(window).scrollTop()
  $("#logo-bg").css "top", (scrolled * 0.3) + "px"
  return

$(window).scroll (e) ->
  parallax()
  return