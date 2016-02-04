var $cardDivs = $('.cardDiv');
var index = 0;
var $showAnswerButton = $('#showAnswerButton');

var _jumpToCard = function (e) {
  
  var clickedClass = $( this ).attr("class");
  var $clickedCard = $('.cardDiv.' + clickedClass);
  
  e.preventDefault();
  $cardDivs.hide();
  _resetCard();
  $clickedCard.fadeIn();
  index = $clickedCard.index();
  
};

var _nextCard = function () {

  index++;
  _resetCard();
  if (index > $cardDivs.length - 1) {
    index = 0;
  }
  $cardDivs.hide();
  $cardDivs.eq(index).fadeIn();

};

var _previousCard = function () {

  index--;
  _resetCard();
  if (index < 0) {
    index = $cardDivs.length - 1;
  }
  $cardDivs.hide();
  $cardDivs.eq(index).fadeIn();

};

var _resetCard = function () {

  $('.answerTextDiv').hide();
  $('.questionTextDiv').show();
  $showAnswerButton.html("Show Answer");
};

var _toggleCardSide = function () {

  if ($showAnswerButton.html() == "Show Question") {
    $showAnswerButton.html("Show Answer");
  }else{
    $showAnswerButton.html("Show Question");
  }
  
  $('.cardSide').toggle();

};

$showAnswerButton.click(_toggleCardSide);
$('#nextCardButton').click(_nextCard);
$('#previousCardButton').click(_previousCard);
$('#render_partial_deck a').click(_jumpToCard);