smoothScroll = require 'smooth-scroll'
smoothScroll.init
  # Selectors
  selector: 'a[href*="#"]' # Selector for links (must be a valid CSS selector)
  selectorHeader: ".navbar", # Selector for fixed headers (must be a valid CSS selector) [optional]

  # Speed & Easing
  speed: 500, # Integer. How fast to complete the scroll in milliseconds
  offset: 0,  # Integer or Function returning an integer. How far to offset the scrolling anchor location in pixels
  easing: 'easeInOutCubic', # Easing pattern to use