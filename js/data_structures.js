// Release 0

var colors = ["red", "green", "blue", "orange"];
var names = ["Ed", "Sunny", "Mittens", "Pacer"];

colors.push("yellow");
names.push("Diamond");

// Release 1

var horses = {};

for (var i = 0; i < colors.length; i ++) {
    horses[names[i]] = colors[i];
}

console.log(horses);

// Release 2

function Car(make, model, year) {
    this.make = make;
    this.model = model;
    this.year = year;

    this.vroom = function() {
        console.log("Vroom vroom!");
    };
}

var newCar = new Car("Honda", "Civic", 2005);
console.log(newCar);
newCar.vroom();

var anotherCar = new Car("Ford", "F-150", 2014);
console.log(anotherCar);
anotherCar.vroom();

// Release 3

