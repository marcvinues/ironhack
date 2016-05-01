$(function(){
  var ArtistManager = function(){
    this.url = 'https://api.spotify.com/v1/search?type=artist&query=';
    this.artists = [];
    this.urlAlbum = 'https://api.spotify.com/v1/';
    this.albums = [];

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

  ArtistManager.prototype.fetchAlbums = function(artistId){
    debugger
    var albumUrl = 'https://api.spotify.com/v1/artists/'+artistId+'/albums/';
    $.get(albumUrl)
      .done(function(response){

      });
  };


  ArtistManager.prototype.render = function(urlAlbums){
    $('.cont').empty();
      this.artists.forEach(function(a){
        debugger
        var text = $('<h1>').text(a.name);
        var divTag = $('<div class="col-xs-4">').append(text);
        if (a.images.length > 0) {
          var imageUrl = a.images[0].url;
          var imgTag = $('<img>').attr('src',imageUrl);
        }
        var albums = a.href+'/albums/';
        var artistId = a.id;
        manager.fetchAlbums(artistId);
        $(divTag).append(imgTag);
        $('.cont').append(divTag);
      });
  };

  var manager = new ArtistManager();
  var AlbumManager = new ArtistManager();

  $('form').on('submit',function(e){
    e.preventDefault();
    var value = $('#artist').val();
    var fullUrl = manager.url+value;
    var urlAlbums = manager.urlAlbum+value;
    // debugger
    manager.fetchArtist(fullUrl);
  });
});
