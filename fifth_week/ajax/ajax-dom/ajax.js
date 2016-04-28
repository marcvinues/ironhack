function getData(){
  var url = 'https://ironhack-characters.herokuapp.com/characters';
  $(document).ready($.ajax({
      url: url,
      method: 'GET',
      success: function(res){
        for (var i = 0; i < res.length; i++) {
          var name = res[i].name;
          var occupation = res[i].occupation;
          $('.container').append('<p>Name :'+name+'</p><p>Occupation :'+occupation+'</p>');
        }
      }
    })
  );
}
