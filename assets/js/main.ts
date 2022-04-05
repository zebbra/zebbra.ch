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