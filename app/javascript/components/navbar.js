const initNavbarWhiteOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight * 0.8) {
        navbar.classList.add('navbar-white');
      } else {
        navbar.classList.remove('navbar-white');
      }
    });
  }
}

export { initNavbarWhiteOnScroll };
