//http://wowmotty.blogspot.com/2011/10/adding-swipe-support.html

var maxTime = 1000,
// allow movement if < 1000 ms (1 sec)
maxDistance = 50,
// swipe movement of 50 pixels triggers the swipe
target = $(this),
startX = 0,
startTime = 0,
touch = "ontouchend" in document,
startEvent = (touch) ? 'touchstart' : 'mousedown',
moveEvent = (touch) ? 'touchmove' : 'mousemove',
endEvent = (touch) ? 'touchend' : 'mouseup';

target.bind(startEvent, function(e) {
  // prevent image drag (Firefox)
  e.preventDefault();
  startTime = e.timeStamp;
  startX = e.originalEvent.touches ? e.originalEvent.touches[0].pageX : e.pageX;
}).bind(endEvent, function(e) {
  startTime = 0;
  startX = 0;
}).bind(moveEvent, function(e) {
  e.preventDefault();
  var currentX = e.originalEvent.touches ? e.originalEvent.touches[0].pageX : e.pageX,
      currentDistance = (startX === 0) ? 0 : Math.abs(currentX - startX),
      // allow if movement < 1 sec
      currentTime = e.timeStamp;
  if (startTime !== 0 && currentTime - startTime < maxTime && currentDistance > maxDistance) {

    if (currentX < startX) {
      // swipe left

      if (index + 1 < $('.cardDiv').length) {
        index += 1;
        resetCard();

        $('.cardDiv').hide();
        $('.cardDiv').eq(index).fadeIn();
        console.log(index);

      } else {
        console.log(index + " The end");
      }



    } else if (currentX > startX) {
      // swipe right

      if (index > 0) {
        index--;
        resetCard();
        $('.cardDiv').hide();
        $('.cardDiv').eq(index).fadeIn();
        console.log(index);
      } else {
        console.log(index + " The beginning");
      }

    }

    startTime = 0;
    startX = 0;
  }
});