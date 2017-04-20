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

// Generate Random Test Data

// write a function that creates a random number within a range
// function should take a min and max number for the range
// use Math.floor and Math.random to generate a random whole number
// set a max number by subtracting the max from min
// add 1 after to account for Math.random not being inclusive of max

// write a function to make a random word
// create alphabet variable
// create word storage variable
// set word length variable to random number using random number function
// loop through word length at each index
// select a random letter from alphabet string
// add it to the end of the word storage variable
// return the word once loop is complete

// write a function to make a random array that takes an integer for array length
// create array storage variable
// loop through the array length
// for each iteration, use random word function
// push the random word into the storage array
// return the final array

// write driver code that loops through 10 times
// for each time through the loop generate an array and assign it to a variable
// print the array variable 
// print the biggest string of the array using the biggest string function with the new array variable as the call

function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function makeRandomWord() {
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    //generate a random number (x)
    //generate a random number x number of times
    //return the word
    var word = "";
    
    var wordLength = getRandomInt(1, 10);
    for (var i = 0; i < wordLength; i++) {
      word += alphabet.charAt(getRandomInt(0, 25));
    }
    return word;
}


function randomArray(integer) {
  var returnArray = [];
  
  for (var i = 0 ; i < integer; i++) {
    returnArray.push(makeRandomWord());
  }
  return returnArray;
}

// console.log(randomArray(3));
// console.log(randomArray(7));



for (var i = 1; i < 10; i ++) {
  var newArray = randomArray(3);
  console.log(newArray);
  console.log(findBiggestString(newArray));
}

