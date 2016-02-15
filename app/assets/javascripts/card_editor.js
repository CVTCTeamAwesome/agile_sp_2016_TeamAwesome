// Auto-update Card Editing page on attribute values changed
$( document ).on("change", "input#card_foreground_color", function () {
  $("div.card_front p.card_text").css("color", $( this ).val());
  $("div.card_back p.card_text").css("color", $( this ).val());
});

$( document ).on("change", "input#card_background_color", function () {
  $("div.card_front").css("background-color", $( this ).val());
  $("div.card_back").css("background-color", $( this ).val());
});

$( document ).on("change", "#card_font_style", function () {
  $("p.card_text").css("font-family", $( this ).val());
});

$( document ).on("change", "#card_font_size", function () {
  $("p.card_text").css("font-size", $( this ).val());
});
    
$( document ).on("keyup", "textarea#card_question_text", function () {
  $("div.card_front p.card_text").html($( this ).val());
});

$( document ).on("keyup", "textarea#card_answer_text", function () {
  $("div.card_back p.card_text").html($( this ).val());
});