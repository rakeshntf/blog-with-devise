# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/





$('#dtupload').dtupload({
    dropZone: $('#dropzone')
});

$('#fileupload').fileupload({
    url: '/localhost:3000/homes',
    sequentialUploads: true
});
$('#fileupload').fileupload(
    'option',
    'url',
    '/localhost:3000/homes'
);

var dropZone = $('#fileupload').fileupload(
    'option',
    'dropZone'
);
$('#fileupload').fileupload(
    'option',
    {
        url: '/localhost:3000/homes',
        sequentialUploads: true
    }
);





$('#fileupload').fileupload();


$('#fileupload').fileupload({
    url: '/app/assets/images.json',
    sequentialUploads: true
});
$('#fileupload').fileupload();
$('#fileupload').fileupload('destroy');
$('#fileupload').fileupload('enable');

$('#fileupload').fileupload('add', {files: filesList});


$('#fileupload').fileupload('add', {files: filesList, url: '/path/to/upload/handler.json'});

$('#fileupload').fileupload('send', {files: filesList});


var jqXHR = $('#fileupload').fileupload('send', {files: filesList})
    .success(function (result, textStatus, jqXHR) {/* ... */})
    .error(function (jqXHR, textStatus, errorThrown) {/* ... */})
    .complete(function (result, textStatus, jqXHR) {/* ... */});





 $("button.continue").html("Next step...")

  var hiddenBox = $("#banner-message") ;
  $("#button-container button").on ("click", function(event){
    huiddenBox.show();
  });
  


 

