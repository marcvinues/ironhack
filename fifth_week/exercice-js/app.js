var container = $('.container');
var rows = 10;
var cols = 10;
var cells = [];
for(var i = 0; i < 10; i++){
  for(var j = 0; j < 10; j++) {
    var cell = $('<div id="'+i+'-'+j+'">').addClass('cell');
    // cell.toggleClass('cell2');
    cells.push(cell);
    container.append(cell);
  }
}

function updateGrid(){
  cells.forEach(function(cell){
    var randomNum = Math.random();
      if (randomNum > 0.5){
        cell.toggleClass('active');
      }
  });
}
$('.cell').on('click',function(event){
  var c = event.currentTarget;
  $(c).toggleClass('active');
  // debugger;

$('body').on('keypress',function(event){
  var ac = $('.active');
  var getind = ac.attr('id').split('-');
  var toin = parseInt(getind[1])+1;
  // ac.toggleClass('active');
  debugger





// } else if(event.keyCode == 68){
//     $(e).toggleClass('active');
//   }
    // debugger
});
// setInterval(updateGrid, 1000);
});
