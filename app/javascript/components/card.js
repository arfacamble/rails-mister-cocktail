const initDisplayDoseFormOnClick = () => {
  const formClicker = document.querySelector('.form-click');
  const form = document.querySelector('.dose-form');
  if (formClicker) {
    formClicker.addEventListener('click', () => {
      form.classList.toggle('visible');
    });
  }
}

export { initDisplayDoseFormOnClick };
