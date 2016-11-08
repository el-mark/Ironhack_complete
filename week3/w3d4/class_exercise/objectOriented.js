// // 1 NO OFFICIAL WAY to creat a class
// var animal = {
//   name: "Shadow",
//   noise: "Brrrr",
//
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

// // 2 The BEST WAY for creating an CLASS
//
// var Animal = function (name, noise) {
//
//   this.name = name;
//   this.noise = noise;
//
//   this.makeNoise = function () {
//     console.log(this.noise + "!!!!!")
//   }
// };
//
// var animal = new Animal("Buk","Brrrr");
// var anotherAnimal = new Animal("Dog","Wufwuf");
//
// animal.makeNoise();
// anotherAnimal.makeNoise();

// // 2.2
// var Animal = function (name, noise) {
//   this.name = name;
//   this.noise = noise;
// };
// Animal.prototype.makeNoise = function () {
//   console.log(this.noise + "!!!!!!")
// }
//
// var animal = new Animal("Buk","Brrrr");
// var anotherAnimal = new Animal("Dog","Wufwuf");
//
// animal.makeNoise();
// anotherAnimal.makeNoise();

// Exercise
var Car = function (model, noise) {
  this.model = model;
  this.noise = noise;
};
Car.prototype.makeNoise = function () {
  console.log(this.noise)
}
Car.prototype.wheels = 4;

var redCar = new Car ("TT","Brrrrmmm");
var blueCar = new Car ("Snake","Butm Butm");

redCar.makeNoise();
blueCar.makeNoise();
console.log(blueCar.wheels);
