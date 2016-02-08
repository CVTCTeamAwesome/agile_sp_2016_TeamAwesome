// Auto-update Card Editing page on attribute values changed
$( document ).on("change", "input#card_foreground_color", function () {
  $("div.card_front p.card_text").css("color", $( this ).val());
  $("div.card_back p.card_text").css("color", $( this ).val());
});

$( document ).on("change", "input#card_background_color", function () {
  $("div.card_front").css("background", $( this ).val());
  $("div.card_back").css("background", $( this ).val());
});

$( document ).on("change", "card_font_style", function () {
 $("div.card_front").css("font-family", $( this ).val());
 $("div.card_back").css("font-family", $( this ).val());
});

$( document ).on("change", "card_font_size", function () {
 $("div.card_front").css("font-size", $( this ).val());
 $("div.card_back").css("font-size", $( this ).val());
});
    
$( document ).on ( "keyup", "textarea#card_question_text", function () {
    $("div.card_front p.card_text").html($( this ).val());
});

$( document ).on ( "keyup", "textarea#card_answer_text", function () {
    $("div.card_back p.card_text").html($( this ).val());
});

// code to update image after one selected, not working right now due
// to inability to access the full file path; looking into this
//$( document ).on ( "change", "input#card_picture", function () {
//  var image = $( this ).val();
//  image = image.replace("C:\\fakepath\\", "");
//  $("div.card_front").css({
//    "background" : "url(\"" + image + "\") no-repeat center",
//    "background-size" : "contain"
//  });
//});
    

