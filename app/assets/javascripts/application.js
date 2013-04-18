// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

function popupCenter(url, width, height, name) {
 var left = (screen.width/2)-(width/2);
 var top = (screen.height/2)-(height/2);
 popupValue = "on";
 return window.open(url, name, "menubar=no,toolbar=no,status=no,width="+width+",height="+height+",toolbar=no,left="+left+",top="+top     );
}

$(document).ready(function(){
$("a.popup").click(function(e) {
popupCenter($(this).attr("href"), $(this).attr("data-width"), $(this).attr("data-height"), "authPopup");
e.stopPropagation(); return false;
});


if(window.opener && window.opener.popupValue === 'on') {
 delete window.opener.popupValue;
 window.opener.location.reload(true);
 window.close()
}
});




jQuery ->
  $('body').prepend('<div id="fb-root"></div>')

  $.ajax
    url: "#{window.location.protocol}//connect.facebook.net/en_US/all.js"
    dataType: 'script'
    cache: true


window.fbAsyncInit = ->
  FB.init(appId: '<%= ENV["FACEBOOK_APP_ID"] %>', cookie: true)

  $('#sign_in').click (e) ->
    e.preventDefault()
    FB.login (response) ->
      window.location = '/auth/facebook/callback' if response.authResponse

  $('#sign_out').click (e) ->
    FB.getLoginStatus (response) ->
      FB.logout() if response.authResponse
    true