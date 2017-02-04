$ ->
  unless /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test navigator.userAgent
    $('body').scrollspy target: '#main-nav'

    $('a[href*="#"]:not([href="#"])').click ->
      if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
        target = $(@hash)
        target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
        if target.length
          $('html, body').animate { scrollTop: target.offset().top }, 1000
          return false


