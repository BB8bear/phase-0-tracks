// Find the Longest Phrase

// Create an array variable that stores the words to check.
// Set a variable to store the current biggest string
// Create a loop that iterates over each item in the array.
    // Create a variable to stand for the array item index
    // Set the index variable to 0
    // Run the loop until the array's length matches index
// Compare value in biggest string variable to current array value
// If current array value is larger than biggest string variable value
// Assign current array value to biggest string variable
// Continue comparing the remainder of the array
// Return the largest string stored in variable

function findBiggestString(array) {
    var biggestString = "";
  
    for (var i = 0; i < array.length; i++) {
        if (array[i].length > biggestString.length) {
            biggestString = array[i];
        }
    }
    return biggestString;
}

var animals = ["kitten", "dog", "bunny", "bird", "giraffe"];

console.log(findBiggestString(animals));

// Find a key-value match

// create a function that will take two object variables
// for...in loop can loop through properties of an object
// for (variable in object) {
//     code to be executed
// }
// assign key variable for first object to compare
// compare if object1 value matches object2 value at object2 key
// If there is a match, object2 has a matching key and value because you could find the value by key
// otherwise return false after checking entire loop

var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
var object3 = {name: "Jimmy Dean", age: 12};
var object4 = {height: 34, weight: 17};

function doesItMatch(item1, item2) { //Create a function that takes two object variables
  
  for (var key in item1) {
    if (item1[key] === item2[key]) {
      return true;
    } 
  }
  return false;
}

// console.log(doesItMatch(object1, object2));
// console.log(doesItMatch(object1, object3));
// console.log(doesItMatch(object1, object4));




