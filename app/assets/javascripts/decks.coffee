# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

`
$( document ).ready(function() {
  $alert = $("p.alert");
  
  if ($alert != null) {
    $("textarea#deck_description").prop("required", true);
    $("select#deck_category_id").prop("required", true);
  }
});
`