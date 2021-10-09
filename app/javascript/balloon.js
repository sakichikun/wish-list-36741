function showBalloon(){
  const wObjballoon = document.getElementById('makeImg');
  if (wObjballoon.className == "balloon1"){
    wObjballoon.className = "balloon";
  } else {
    wObjballoon.className = "balloon1"
  }
}
window.addEventListener('click', showBalloon);