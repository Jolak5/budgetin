// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

document.addEventListener("DOMContentLoaded", function () {
  const hamburgerMenu = document.querySelector(".hamburger-menu");
  const bars = document.querySelectorAll(".bar");
  var navMenu = document.querySelector(".nav-menu");

  hamburgerMenu.addEventListener("click", function () {
    this.classList.toggle("open");
    navMenu.classList.toggle("open");
  });

  const navLinks = document.querySelectorAll(".nav-list a");
  navLinks.forEach(function (link) {
    link.addEventListener("click", function () {
      hamburgerMenu.classList.remove("open");
      navMenu.classList.remove("open");
    });
  });
});
