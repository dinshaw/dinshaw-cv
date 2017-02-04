$ ->
  unless /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test navigator.userAgent
    $('body').scrollspy target: '#main-nav'

