// Release 0

var colors = ["red", "green", "blue", "orange"];
var horses = ["Ed", "Sunny", "Mittens", "Pacer"];

colors.push("yellow");
horses.push("Diamond");

// Release 1

function Horse(name, color) {
    name = name;
    color = color;
}

for (var i = 0; i < colors.length; i++) {
    var newHorse = new Horse(horses[i], colors[i]);
    console.log(newHorse);
}

// Release 2

