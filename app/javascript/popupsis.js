function popupImageSis() {
  const popupSis = document.getElementById('js-popup-sis');
  if(!popupSis) return;

  const closeBtnSis = document.getElementById('js-close-btn-sis');
  const showBtnSis = document.getElementById('js-show-popup-sis');

  closePopUp(closeBtnSis);
  closePopUp(showBtnSis);
  function closePopUp(elem) {
    if(!elem) return;
    elem.addEventListener('click', function() {
      popupSis.classList.toggle('is-show');
    });
  }
}
window.addEventListener('load', popupImageSis);