$(".multiUpload").dropImageReader (file, event) ->
  img = $ "<img/>",
    alt: file.name
    src: event.target.result
    title: file.name
 
  $(this).append img