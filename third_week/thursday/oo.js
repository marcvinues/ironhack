// //EX 1
// var animal = {
//   name: "Shadow",
//   noise: "Brrrr",
//   shout: function () {
//     console.log("Mooooo!");
//   },
//   makeNoise: function () {
//     // console.log(animal.noise + "!!!!") //Alternative
//     console.log(this.noise + "!!!!")
//   }
// };
//
// animal.makeNoise();

//EX 2

// var Animal = function(name, noise){
//   this.name = name;
//   this.noise = noise;
//
//   this.makeNoise = function(){
//     console.log(this.noise + "!!!!!");
//   };
// };
//
// var animal = new Animal("Buk","bRRRR");
// var anotherAnimal = new Animal("asdasda", "pffff");
//
// animal.makeNoise();
// anotherAnimal.makeNoise();

//EX 3 Prototype

var Animal = function(name, noise){
  this.name = name;
  this.noise = noise;
};

Animal.prototype.makeNoise = function(){
  console.log(this.noise + "!!!!!");
};

var animal = new Animal("Buk","bRRRR");
var anotherAnimal = new Animal("asdasda", "pffff");

animal.makeNoise();
anotherAnimal.makeNoise();
