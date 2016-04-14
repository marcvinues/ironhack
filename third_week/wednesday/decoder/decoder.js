// var words, message;
// var words = [
//   'January',
//   'lacks',
//   'caveats',
//   'hazardous',
//   'DOORS',
//   'crying',
//   'arrogantly',
//   'climate',
//   'proponent',
//   'rebuttal'
// ];

function decoder(words){
  var index = 0;
  var secretMessage = "";

  for (var i = 0; i < words.length; i++) {
    secretMessage += words[i].charAt(index);
    index = (index +1) % 5;
  }
  return secretMessage;
}
// we need to export this function
// to do that and to use in another file we need to export
module.exports = decoder;
//
// message = decoder(words);
// console.log(message);
