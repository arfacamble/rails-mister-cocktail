const initDisplayDoseFormOnClick = () => {
  const formClicker = document.querySelector('.form-click');
  const form = document.querySelector('.dose-form');
  const downArrow = document.querySelector('.fa-caret-down');
  const upArrow = document.querySelector('.fa-caret-up');
  if (formClicker) {
    formClicker.addEventListener('click', () => {
      form.classList.toggle('visible');
      downArrow.classList.toggle('visible');
      upArrow.classList.toggle('visible');
    });
  }
}

export { initDisplayDoseFormOnClick };
