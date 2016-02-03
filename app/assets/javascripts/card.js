var index = 0

var _nextCard = function () {

  index++;
  var $cardDivs = $('.cardDiv');
  $('.answerTextDiv').hide();
  console.log(index);
  if (index > $cardDivs.length - 1) {
    index = 0;
  }
  $cardDivs.hide();
  $cardDivs.eq(index).fadeIn();

};

var _previousCard = function () {

  index--;
  var $cardDivs = $('.cardDiv');
  $('.answerTextDiv').hide();
  console.log(index);
  if (index < 0) {
    index = $cardDivs.length - 1;
  }
  $cardDivs.hide();
  $cardDivs.eq(index).fadeIn();

};

var _toggleCardSide = function () {

  $('.cardSide').toggle();

};

$('.answerTextDiv').hide();
$('#showAnswerButton').click(_toggleCardSide);
$('#nextCardButton').click(_nextCard);
$('#previousCardButton').click(_previousCard);