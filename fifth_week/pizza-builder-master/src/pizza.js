// Write your Pizza Builder JavaScript in this file.
function hidegreenpeper(){
  var hiddegreen = $('.green-pepper');
  hiddegreen.toggleClass('pizza-hide');
  $('.btn-green-peppers').toggleClass('active');

  }
function hidepep(){
  var hiddepep = $('.pep');
  hiddepep.toggleClass('pizza-hide');
  $('.btn-pepperonni').toggleClass('active');
}
function mush(){
  var mushroom = $('.mushroom ');
  mushroom.toggleClass('pizza-hide');
  $('.btn-mushrooms').toggleClass('active');
}
function removeGluten(){

var rem = $('.crust');
rem.toggleClass('crust-gluten-free');
$('.btn-crust').toggleClass('active');

}
function sauce(){

var rem = $('.sauce');
rem.toggleClass('sauce-white');
$('.btn-sauce').toggleClass('active');

}
