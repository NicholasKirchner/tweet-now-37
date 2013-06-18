$(document).ready(function() {
  $('#submit_tweet').on("click", function(e) {
    e.preventDefault();
    console.log("BUTTON CLICKED");
    $.ajax({
      url: '/tweets/new',
      type: 'POST',
      data: { tweet: $(this).parent().find("textarea").val() }
      }).done(function(response) {
        console.log(response);
      });
  });
 });