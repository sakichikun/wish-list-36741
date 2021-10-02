const picArray = [
{src: 'images/china.jpg', title: 'To go to China?'},
{src: 'images/sand.jpg', title: 'To ride a camel?'},
{src: 'images/dance.jpg', title: 'To perform a dance?'},
{src: 'images/dog.jpg', title: 'To have dogs?'}
];

let counter = 0;

function changePicture() {
  if (counter < picArray.length) {
    document.getElementById('pics').src = picArray[counter].src;
    document.getElementById('pic-title').innerHTML = picArray[counter].title;
    counter++;
  } else {
    document.getElementById('pics').src = picArray[0].src;
    document.getElementById('pic-title').innerHTML = picArray[0].title;
    counter = 1;
  } 
}


let playingID = 0;

function playSlideshow () {
  if (playingID == 0) {
    document.getElementById('playButton').innerHTML = 'STOP';
    playingID = setInterval(changePicture, 2000);
  } else {
    document.getElementById('playButton').innerHTML = 'START';
    clearInterval(playingID);
    playingID = 0;
  }
}

window.addEventListener('click', playSlideshow);