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
    console.log((newString));
    console.log(("(" + string + ")"));    
}

console.log(reverseString("hello"));
console.log(reverseString("taco cat"));