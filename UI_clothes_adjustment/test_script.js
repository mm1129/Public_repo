var images = ['images/body0.png','images/body1.png', 'images/body2.png', 'images/body3.png', 'images/body4.png'];
var currentIndex = 0;

function changeImage() {
  var image = document.getElementById('image');
  currentIndex = (currentIndex + 1) % images.length;
  var newSrc = images[currentIndex];
  image.src = newSrc;
  image.alt = '画像' + (currentIndex + 1);
}
var shoulderWidth = 200;
var waistWidth = 300; 
var sleeveLength = 400; 
const neck = { x: 400, y: 180 };
const topLength = 400;
function paintGarment() { 
  const canvas = document.getElementById('canvas');
  const context = canvas.getContext('2d');
  
  
  
  
  const sleeveWidth = 80;
  
  context.clearRect(0, 0, canvas.width, canvas.height);
  context.fillStyle = 'black';
  context.lineWidth = 2;
  context.strokeStyle = 'black';
  
  
  
  context.translate(neck.x, neck.y);
  
  const sleeveY = topLength + sleeveLength;
  const sleeveHeight = Math.max(0, sleeveLength - shoulderWidth / 2);

  context.clearRect(0, 0, canvas.width, canvas.height);
  context.fillStyle = 'black';
  context.lineWidth = 2;
  context.strokeStyle = 'black';
  
  context.beginPath();
  context.moveTo(-shoulderWidth / 2, 0);
  context.lineTo(shoulderWidth / 2, 0);
  context.lineTo(waistWidth / 2, topLength);
  context.lineTo(-waistWidth / 2, topLength);
  context.closePath();
  context.stroke();
  
  
  context.setTransform(1, 0, 0, 1, 0, 0);
  
  
  context.translate(neck.x + shoulderWidth / 2, neck.y);
  context.rotate(Math.PI * 60 / 180);
  context.strokeRect(0, 0, sleeveLength, sleeveWidth); 
  
  
  context.setTransform(1, 0, 0, 1, 0, 0);
  
  context.translate(neck.x - shoulderWidth / 2, neck.y);
  context.rotate(Math.PI * 120 / 180);
  
  context.strokeRect(0, 0, sleeveLength, -sleeveWidth); 
  
  context.setTransform(1, 0, 0, 1, 0, 0);
}







  









































function updateShoulderWidth(value) {
  console.log('update');
  shoulderWidth = parseInt(value*200/50);
  
  
  paintGarment(shoulderWidth, waistWidth, sleeveLength);
}
function updateWaistWidth(value) {
  console.log('update');
  
  waistWidth = parseInt(value*300/50); 
  
  paintGarment(shoulderWidth, waistWidth, sleeveLength);
}
function updateSleeveLength(value) {
  console.log('Sleeveupdate');
  
  
  sleeveLength = parseInt(value*400/50); 
  paintGarment(shoulderWidth, waistWidth, sleeveLength);
}

function handleMouseDown(event) {
  const x = event.clientX;
  const y = event.clientY;
  console.log(neck.x, neck.y);
  console.log(x,y);
  console.log(shoulderWidth/2);
  if (y > neck.y + topLength-30) {
    console.log('waist');
    
    isDragging = true;
    dragType = 'waist';
  } else if(y < neck.y + 30 ) {
    
    console.log('shoulder');
    isDragging = true;
    dragType = 'shoulder';
  } else if (x < neck.x - shoulderWidth/2 -100  || x > neck.x + shoulderWidth/2 +100 ) {
    console.log('sleeve');
    isDragging = true;
    dragType = 'sleeve';
  } else{
    alert('スライダーも使用できます');
  }
  console.log(isDragging);
  if (isDragging) {
    
    const element = document.getElementById(dragType);

    
    document.getElementById('waist').style.backgroundColor = 'initial';
    document.getElementById('shoulder').style.backgroundColor = 'initial';
    document.getElementById('sleeve').style.backgroundColor = 'initial';

    
    if (dragType === 'waist') {
      element.style.backgroundColor = 'red';
    } else if (dragType === 'shoulder') {
      element.style.backgroundColor = 'green';
    } else if (dragType === 'sleeve') {
      element.style.backgroundColor = 'blue';
    }
  }
}

}


function handleMouseUp() {
  isDragging = false;
  dragType = '';
}


function handleMouseMove(event) {
  if (isDragging) {
    var offsetX = event.movementX; 
    var offsetY = event.movementY;
    if(event.clientX < neck.x) offsetX = -offsetX;
    if(event.clientY < neck.y) offsetY = -offsetY;

    if (dragType === 'shoulder') {
      shoulderWidth += offsetX;
    } else if (dragType === 'waist') {
      waistWidth += offsetX;
    } else if (dragType === 'sleeve') {
      sleeveLength += offsetY;
    }


    paintGarment();
  }
}


function isWithinArea(x, y, centX, centY, halfWidth, halfHeight) {
  return x >= centX-halfWidth-30 && x <= centX + halfWidth+30 && y >= centY-halfHeight-30 && y <= centY + halfHeight+30;
}


