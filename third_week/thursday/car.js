var Car = function(model, noise){
  this.model = model;
  this.noise = noise;
  var wheels = 4;

  this.makeNoise = function(){
    console.log(this.noise + "!!!! " + wheels);
  };
};

var noises = new Car("ibiza", "bbrrrr");
noises.makeNoise();
