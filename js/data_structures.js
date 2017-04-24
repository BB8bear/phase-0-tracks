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

// 1. You can loop over an object with a for...in statement, but will only loop over enumerable properties.
//    You can also use the Object.keys() or Object.values() methods to return an array of an object's own enumerable properties
//    in the same order as a for...in loop
//    The difference is that a for-in loop enumerates properites from an Object's source protype.
// 2. You can assign values to the objects key and value based on the values passed into the function, instead of typing everything out by hand.
//    You can also create any number of new objects with your constructor.
//    You can also pass statements instead of literal strings or integers.