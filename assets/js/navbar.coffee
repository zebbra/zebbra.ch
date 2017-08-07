# shrink navbar when scrolling
$(window).scroll ->
  if $(document).scrollTop() > 50
    $('nav').removeClass('navbar-inflate')
  else
    $('nav').addClass('navbar-inflate')


