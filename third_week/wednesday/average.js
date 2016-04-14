var snumbers = '80:70:90:100';

function averageColon(numbers){
  var n = numbers.split(":");
  var sum = 0;
  n.forEach(function(number){
    sum += parseInt(number);
  });
  return sum/n.length;
}
var results = averageColon(snumbers);
console.log(results);
