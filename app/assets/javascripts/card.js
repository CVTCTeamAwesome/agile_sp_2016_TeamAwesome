var $cardDivs = $('.cardDiv');
var index = 0

var _jumpToCard = function (e) {
  
  var clickedClass = $( this ).attr("class");
  var $clickedCard = $('.cardDiv.' + clickedClass);
  
  e.preventDefault();
  $cardDivs.hide();
  _toggleCardSide();
  $clickedCard.fadeIn();
  index = $clickedCard.index();
  
};

var _nextCard = function () {

  index++;
  _toggleCardSide();
  if (index > $cardDivs.length - 1) {
    index = 0;
  }
  $cardDivs.hide();
  $cardDivs.eq(index).fadeIn();

};

var _previousCard = function () {

  index--;
  _toggleCardSide();
  if (index < 0) {
    index = $cardDivs.length - 1;
  }
  $cardDivs.hide();
  $cardDivs.eq(index).fadeIn();

};

var _toggleCardSide = function () {

  $( this).html("Show Question");
  $('.cardSide').toggle();

};

$('#showAnswerButton').click(_toggleCardSide);
$('#nextCardButton').click(_nextCard);
$('#previousCardButton').click(_previousCard);
$('#render_partial_deck a').click(_jumpToCard);