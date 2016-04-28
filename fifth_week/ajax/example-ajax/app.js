$(function(){

  var url = 'http://pokeapi.co/api/v2/pokemon/' + 150;

  $.ajax({
    url: url,
    method: 'GET',
    success: function(res){
      var imageUrl = res.sprites.front_default;
      var imgTag = $('<img>').attr('src',imageUrl);
      $('.container').append(imgTag);
    }
  });

  // they do the same thing but more mesi (it works)
  // var any = $.get(url);
  // any.done(function(res){
  //   var imageUrl = res.sprites.front_default;
  //   var imgTag = $('<img>').attr('src',imageUrl);
  //   $('.container').append(imgTag);
  // });

});
