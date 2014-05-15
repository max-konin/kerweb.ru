$ ->
  about_us = $ '#about_us'

  return unless about_us.length > 0

  fons = about_us.find '._fon'

  compute_fons_width = ->
    fon_width = (about_us.width() - about_us.find('.row').width())*0.5
    fons.each ->
      $(this).width fon_width

  compute_fons_width()

  $(window).on 'resize', compute_fons_width

  blue = about_us.find '#_blue'

  blue.find('._holder').on 'mouseleave', ->
    q = $ this

    setTimeout ->
      content = q.find('._content')
      return if content.width() != 0

      is_right = q.hasClass 'right'
      q.toggleClass 'right', !is_right
      q.toggleClass 'left', is_right

      if is_right
        content.appendTo q
      else
        content.prependTo q

    , 520


