$(document).ready(function(){
    var url = 'https://ironhack-characters.herokuapp.com/characters';

    function fetchCharacters(){
        $.ajax({
          url: url,
          method: 'GET',
          success: function(res){
            $('.container').empty();
            for (var i = 0; i < res.length; i++) {
              var name = res[i].name;
              var occupation = res[i].occupation;
              $('.container').append('<li>Name :'+name+'</li><li>Occupation :'+occupation+'</li><hr>');
            }
          }
        });
      }
  fetchCharacters();


  $('form').on('submit',function(e){
    e.preventDefault();
     var name = $('#name').val();
     var occ = $('#occ').val();
     var weapon = $('#weap').val();

     var newCharacter = {
          name : name,
          occupation : occ,
          weapon: weapon
        };

//post new info
    $.ajax({
      url: url,
      type: "POST",
      data: newCharacter,
      success: function(res){
        fetchCharacters();
      }
    });
  });
});
// best practises
// $(function () {
//   var CharacterManager = function () {
//     this.url = 'https://ironhack-characters.herokuapp.com/characters';
//     this.characters = [];
//   };
//   CharacterManager.prototype.fetchCharacters = function () {
//     var mySecret = 'secret';
//     $.ajax({
//       url: this.url,
//       success: function (characters) {
//         console.log(mySecret);
//         this.characters = characters;
//         this.render();
//       }.bind(this),
//       error: function (err) {
//         console.log('some error');
//       }
//     })
//   };
//   function doSomething() {
//   }
//   // function style
//   doSomething();
//
//
//   CharacterManager.prototype.render = function () {
//     $('.characters').empty();
//     this.characters.forEach(function (character) {
//       var text = character.name + ' is a ' + character.occupation;
//       var element = $('<p>').text(text);
//       $('.characters').append(element);
//       });
//     };
//   // constructor style
//   var manager = new CharacterManager();
//
//   //method style
//   manager.fetchCharacters();
//
//   $('form').on('submit', function (e) {
//     e.preventDefault();
//     var name = $('#name').val();
//     var occupation = $('#occupation').val();
//     var weapon = $('#weapon').val();
//     var character = {
//       name: name,
//       occupation: occupation,
//       weapon: weapon
//     };
//
//     $.ajax({
//       url: url,
//       type: 'POST',
//       data: character,
//       success: function (res) {
//         fetchCharacters();
//       },
//       error: function (err) {
//         debugger
//       }
//     })
//   })
//
// });
