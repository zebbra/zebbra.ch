console.log("hello")

// import { SmoothScroll } from "smooth-scroll";

// SmoothScroll.new('a[href*="#"]', {
//   header: ".navbar",        // Selector for fixed headers(must be a valid CSS selector) [optional]
//   speed: 500,               // Integer.How fast to complete the scroll in milliseconds
//   offset: 0,                // Integer or Function returning an integer.How far to offset the scrolling anchor location in pixels
//   easing: 'easeInOutCubic'  // Easing pattern to use
// });

window.addEventListener("scroll", (event) => {
  const nav = document.querySelector("nav");
  if (window.scrollY > 50) {
    nav.classList.remove('navbar-inflate');
  } else {
    nav.classList.add('navbar-inflate');
  }
});

import { tsParticles } from "tsparticles";
if (document.querySelector("#particles")) {
  tsParticles.loadJSON('particles', '/particles.json');
}
