var index = 0;

var jumpToCard = function (e) {
  
  var clickedClass = $( this ).attr("class");
  var $clickedCard = $('.cardDiv.' + clickedClass);
  e.preventDefault();
  $('.cardDiv').hide();
  resetCard();
  $clickedCard.fadeIn();
  index = $clickedCard.index();
  
};

var nextCard = function () {

  index++;
  resetCard();
  if (index > $('.cardDiv').length - 1) {
    index = 0;
  }
  $('.cardDiv').hide();
  $('.cardDiv').eq(index).fadeIn();

};

var previousCard = function () {

  index--;
  resetCard();
  if (index < 0) {
    index = $('.cardDiv').length - 1;
  }
  $('.cardDiv').hide();
  $('.cardDiv').eq(index).fadeIn();

};

var resetCard = function () {

  $('.answerTextDiv').hide();
  $('.questionTextDiv').show();
  $('#showAnswerText').html("Question");
  
};

var toggleCardSide = function () {
  
  if ($('#showAnswerText').html() == "Question") {
    $('#showAnswerText').html("Answer");
  }else{
    $('#showAnswerText').html("Question");
  }
  
  $('.cardSide').toggle();

};

var resetDeck = function () {
  
}

$( document ).on( "click", ".cardSide" , toggleCardSide);
$( document ).on( "click", ".fa-chevron-right" , nextCard);
$( document ).on( "click", ".fa-chevron-left" , previousCard);
$( document ).on( "click", "#render_partial_deck a" , jumpToCard);

//http://wowmotty.blogspot.com/2011/10/adding-swipe-support.html
$( document ).on( "mousedown", ".cardDiv", function() {
  var maxTime = 1000,
  // allow movement if < 1000 ms (1 sec)
  maxDistance = 50,
  // swipe movement of 50 pixels triggers the swipe
  $target = $('.cardDiv'),
  startX = 0,
  startTime = 0,
  touch = "ontouchend" in document,
  startEvent = (touch) ? 'touchstart' : 'mousedown',
  moveEvent = (touch) ? 'touchmove' : 'mousemove',
  endEvent = (touch) ? 'touchend' : 'mouseup';
  
  $target.bind(startEvent, function(e) {
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
  
})

