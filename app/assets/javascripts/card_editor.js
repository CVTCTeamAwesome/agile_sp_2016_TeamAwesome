// Auto-update Card Editing page on attribute values changed

$( document ).on ( "keyup", "textarea#card_question_text", function () {
    $("div.card_front p.card_text").html($( this ).val());
  });

$( document ).on ( "keyup", "textarea#card_answer_text", function () {
    $("div.card_back p.card_text").html($( this ).val());
  });
