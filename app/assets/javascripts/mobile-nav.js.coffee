$ ->
 $(".navbar-nav li a").click (event) ->
  if $(".navbar-toggler").is ':visible'
    $(".navbar-collapse").collapse 'hide'

