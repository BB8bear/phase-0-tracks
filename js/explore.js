// Reverse String

// Declare string variable
// Find the string length. 
// Assign the index variable to the last place in the string.
// Iterate through the string backward based on index.
// Repeat until source string has been iterated through once
// Print the new string containing the reversed word

// var string = "hello";
// var first = string.charAt(string.length-1);
// console.log(first);


function reverseString(string) {
    var newString = "";

    for (var i = string.length-1; i >= 0; i -= 1) {
        newString += string.charAt(i);
    }
    return newString; 
}

var string1 = reverseString("hello");
var string2 = reverseString("taco cat");
var string3 = reverseString("batman");

// OR

// function reverseStringv2(string) {
//     console.log(string.split('').reverse().join(''));
// }


console.log(string1);
console.log(string2);
console.log(string3);
