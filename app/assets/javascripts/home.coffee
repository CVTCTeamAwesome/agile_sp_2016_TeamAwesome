# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

`
var index = 0;


var resetCard = function () {

  $('.answerTextDiv').hide();
  $('.questionTextDiv').show();
  $('#cardSideDescription').html("Question:");
  
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
  
  if ($('#cardSideDescription').html() == "Question:") {
      
    $('#cardSideDescription').html("Answer:");
  }else{
    
    $('#cardSideDescription').html("Question:");
  }
  
  $('.cardSide').toggle();
};


var showFirstCard = function () {
  
  $('.cardDiv').eq(0).fadeIn();
  
};

function setupHammerListeners() {
  var cardDiv = document.getElementById("render_partial_deck");
  console.log(cardDiv);
  var mc = new Hammer(cardDiv);
  mc.on("swipeleft", nextCard);
  mc.on("swiperight", previousCard);
  mc.on("tap", toggleCardSide);
};

$( document ).ready(setupHammerListeners);
$( document ).on( 'page:load', setupHammerListeners);

$( document ).on( "click", ".fa-chevron-right" , nextCard);
$( document ).on( "click", ".fa-chevron-left" , previousCard);
$( document ).on( "click", "#render_partial_deck a" , jumpToCard);
$( document ).on( "ajaxStop", showFirstCard);

`
