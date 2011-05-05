$(function() {
    if ($("#backchannels").length > 0) {
  
      setTimeout(updateBackchannels, 10000);
  }
});

function updateBackchannels() {
//  for ( var i=0; i <= ($("#backchannels").length); i++){
//    var nm = $("#backchannels .backchannel").find("span").text();
//    $("#backchannels").prepend(nm);
//    $("table tr td:contains('user1')").css("background-color", "#00ffff");
//  }
    var after = $(".backchannel:first-child").attr("data-time");
  $.getScript("/backchannels.js?&after=" + after)
    setTimeout(updateBackchannels, 10000);
}

$.ajaxSetup({
beforeSend: function(xhr) {xhr.setRequestHeader("Accept", "text/javascript");}
});



// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
