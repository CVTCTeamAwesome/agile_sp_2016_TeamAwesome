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
  $('#showAnswerButton').html("Show Answer");

};

var toggleCardSide = function () {
  
  if ($( this ).html() == "Show Question") {
    $( this ).html("Show Answer");
  }else{
    $( this ).html("Show Question");
  }
  
  $('.cardSide').toggle();

};

$( document ).on( "click", "#showAnswerButton" , toggleCardSide);
$( document ).on( "click", "#nextCardButton" , nextCard);
$( document ).on( "click", "#previousCardButton" , previousCard);
$( document ).on( "click", "#render_partial_deck a" , jumpToCard);