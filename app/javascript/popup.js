function popupImage() {
  const popup = document.getElementById('js-popup');
  if(!popup) return;

  const closeBtn = document.getElementById('js-close-btn');
  const showBtn = document.getElementById('js-show-popup');

  closePopUp(closeBtn);
  closePopUp(showBtn);
  function closePopUp(elem) {
    if(!elem) return;
    elem.addEventListener('click', function() {
      popup.classList.toggle('is-show');
    });
  }
}
window.addEventListener('load', popupImage);