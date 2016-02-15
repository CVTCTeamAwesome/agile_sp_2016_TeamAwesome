var index = 0;

var resetCard = function () {

  $('.answerTextDiv').hide();
  $('.questionTextDiv').show();
  $('#showAnswerText').html("Question");
  
};

var hideShowCard = function () {
  $('.cardDiv').hide();
  $('.cardDiv').eq(index).fadeIn();
};

var jumpToCard = function (e) {
  
  var clickedClass = $(this).attr("class");
  var $clickedCard = $('.cardDiv.' + clickedClass);
  e.preventDefault();
  $('.cardDiv').hide();
  resetCard();
  $clickedCard.fadeIn();
  index = $clickedCard.index();
};

var nextCard = function () {
  
  index++;
  if (index > $('.cardDiv').length - 1) {
    index = 0;
  }
  resetCard();
  
  hideShowCard();
  console.log('working'); 
};

var previousCard = function () {

  index--;
  resetCard();
  if (index < 0) {
    index = $('.cardDiv').length - 1;
  }
  
  hideShowCard();
};

var toggleCardSide = function () {
  
  if ($('#showAnswerText').html() == "Question") {
    $('#showAnswerText').html("Answer");
  }else{
    $('#showAnswerText').html("Question");
  }
  
  $('.cardSide').toggle();

};

var showFirstCard = function () {
  
  $('.cardDiv').eq(0).fadeIn();
  
};
$( document ).on( "click", ".cardSide" , toggleCardSide);
$( document ).on( "click", ".fa-chevron-right" , nextCard);
$( document ).on( "click", ".fa-chevron-left" , previousCard);
$( document ).on( "click", "#render_partial_deck a" , jumpToCard);
$( document ).on( "ajaxStop", showFirstCard);

//http://wowmotty.blogspot.com/2011/10/adding-swipe-support.html

var maxTime = 1000,
// allow movement if < 1000 ms (1 sec)
maxDistance = 50,
// swipe movement of 50 pixels triggers the swipe
startX = 0,
startTime = 0,
touch = "ontouchend" in document,
startEvent = (touch) ? 'touchstart' : 'mousedown',
moveEvent = (touch) ? 'touchmove' : 'mousemove',
endEvent = (touch) ? 'touchend' : 'mouseup';

