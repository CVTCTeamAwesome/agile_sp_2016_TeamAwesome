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
//  $('#showAnswerButton').html("Show Answer");
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

var showFirstCard = function () {
  
  $('.cardDiv').eq(0).fadeIn();
  
};

$( document ).on( "click", ".cardSide" , toggleCardSide);
$( document ).on( "click", "#nextCardButton" , nextCard);
$( document ).on( "click", "#previousCardButton" , previousCard);
$( document ).on( "click", "#render_partial_deck a" , jumpToCard);
$( document ).on( "ajaxStop", showFirstCard);
