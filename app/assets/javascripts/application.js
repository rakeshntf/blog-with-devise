// This is a manifest dt that'll be compiled into application.js, which will include all the dt
// listed below.
//
// Any JavaScript/Coffee dt within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled dt.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
]//= require bootstrap-datepicker
//= require jquery
//= require jquery_ujs

//= require autocomplete-rails
//= require jquery.fileupload-ui 
//= require jquery-fileupload/vendor/jquery.ui.widget
//= require jquery-fileupload/vendor/load-image
//= require jquery-fileupload/vendor/canvas-to-blob
//= require jquery-fileupload/vendor/tmpl
//= require jquery-fileupload/jquery.iframe-transport
//= require jquery-fileupload/jquery.fileupload
//= require jquery-fileupload/jquery.fileupload-fp
//= require jquery-fileupload/jquery.fileupload-ui
//= require jquery-fileupload/locale  

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



 
  $(function() {
    $( "#datepicker" ).datepicker();
  });
 

$('#my_autocomplete_field').bind('railsAutocomplete.select', function(event, data){
  /* Do something here */
  alert(data.item.id);
});
 

 

  $(function() {
    $( "#accordion" ).accordion();
  });


  $(function() {
    var state = true;
    $( "#button" ).click(function() {
      if ( state ) {
        $( "#effect" ).animate({
          backgroundColor: "#aa0000",
          color: "#fff",
          width: 500
        }, 1000 );
      } else {
        $( "#effect" ).animate({
          backgroundColor: "#fff",
          color: "#000",
          width: 240
        }, 1000 );
      }
      state = !state;
    });
  });




  $(document).ready(function() {
    $('.hide-comments').click(function(e) {
      e.preventDefault();
      $(this).parent().hide();
    });
});





  function showVideoPlayer(){          
    console.log('video displayed');      
    $("#video").fadeIn('medium');
}


$(document).bind('dragover', function (e) {
    var dropZone = $('#dropzone'),
        timeout = window.dropZoneTimeout;
    if (!timeout) {
        dropZone.addClass('in');
    } else {
        clearTimeout(timeout);
    }
    if (e.target === dropZone[0]) {
        dropZone.addClass('hover');
    } else {
        dropZone.removeClass('hover');
    }
    window.dropZoneTimeout = setTimeout(function () {
        window.dropZoneTimeout = null;
        dropZone.removeClass('in hover');
    }, 100);
});