function showBalloon(){
  const wObjballoon = document.getElementById('makeImg');

  if(!wObjballoon) return;
  const bal = document.getElementById('ballon');
  const special = document.getElementById('js-special');
  closePopUp(special);
  closePopUp(bal);
  function closePopUp(elem) {
    if(!elem) return;
    elem.addEventListener('click', function() {
      wObjballoon.classList.toggle('balloon')
    })
  }
}
window.addEventListener('load', showBalloon);