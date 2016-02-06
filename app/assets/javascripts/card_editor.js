// Auto-update Card Editing page on attribute values changed
var $frontTextField = $("textarea#card_question_text");
  var $cardFront = $("div.card_front");
  var $cardFrontText = $("div.card_front p.card_text");
  
  var $backTextField = $("textarea#card_answer_text");
  var $cardBack = $("div.card_back");
  var $cardBackText = $("div.card_back p.card_text");
  
  var $foregroundColor = $("input#card_foreground_color");
  var $backgroundColor = $("input#card_background_color");
  
  $foregroundColor.on("change", function () {
    $cardFrontText.css("color", $foregroundColor.val());
    $cardBackText.css("color", $foregroundColor.val());
  });
  
  $backgroundColor.on("change", function () {
    $cardFront.css("background", $backgroundColor.val());
    $cardBack.css("background", $backgroundColor.val());
  });
    
$( document ).on ( "keyup", "textarea#card_question_text", function () {
    $("div.card_front p.card_text").html($( this ).val());
  });

$( document ).on ( "keyup", "textarea#card_answer_text", function () {
    $("div.card_back p.card_text").html($( this ).val());
});
