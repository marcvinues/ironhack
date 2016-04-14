// function shout(){
//   console.log('ahhhhhhh');
// };
// setTimeout(shout, 2000);

// function blastOff(seconds){
//
//     function countdown(){
//       console.log(seconds);
//       seconds--;
//         if(seconds >= 0){
//             setTimeout(countdown, 1000);
//         }else{
//             console.log("Blastoff!");
//           }
//       };
//
//   countdown();
//
// };
// blastOff(5);
function sleep(seconds, message){
  var ms = seconds * 1000;
  setTimeout(message,ms);
};
sleep(3, function(){
  console.log('it´s been 10 seconds.')  ;
});
