// $(document).ready(function(){
//
// var url = 'https://api.spotify.com/v1/search?type=artist&query=';
//
//   $('form').on('submit',function(e){
//     e.preventDefault();
//     var value = $('#artist').val();
//     var fullUrl = url+value;
//     // debugger
//     fetchArtist(fullUrl);
//   });
//
//
// function fetchArtist(fullUrl){
//   $.ajax({
//     url: fullUrl,
//     method: 'GET',
//     success:function(artists){
//       //  debugger
//       $('.container').empty();
//       $('.img').empty();
//         var text = 'Artist :'+ artists.artists.items[0].name;
//         var element = $('<p>').text(text);
//         var imageUrl = artists.artists.items[0].images[0].url;
//         var imgTag = $('<img>').attr('src',imageUrl);
//         $('.container').append(element);
//         $('.img').append(imgTag);
//       //});
//      }
//   });
//  }
// });

$(function(){
  var ArtistManager = function(){
    this.url = 'https://api.spotify.com/v1/search?type=artist&query=';
    this.artists = [];
  };

  ArtistManager.prototype.fetchArtist = function(fullUrl){
    $.ajax({
      url: fullUrl,
      method: 'GET',
      success:function(result){
        this.artists = result.artists.items;
        this.render();
      }.bind(this),
      //   error: function (err) {
      //   console.log('some error');
      //  }
    });
  };

  ArtistManager.prototype.render = function(){
    $('.cont').empty();
      this.artists.forEach(function(a){
        var text = $('<h1>').text(a.name);
        // var element = $('<p>').html(text);
        var imageUrl = a.images[1].url;
        var divTag = $('<div class="col-xs-4">').append(text);
        var imgTag = $('<img>').attr('src',imageUrl);
        //divTag.append(imgTag);
        // debugger
        $(divTag).append(imgTag);
        $('.cont').append(divTag);

        // $('.col-xs-6').append(imgTag);
      });
  };

  var manager = new ArtistManager();

  $('form').on('submit',function(e){
    e.preventDefault();
    var value = $('#artist').val();

    var fullUrl = manager.url+value;
    // debugger
    manager.fetchArtist(fullUrl);
  });
  // debugger


});
