// JS Syntax
// Variable
// Variable - Constant --> can't be changed later
const fullName = "My Name"
// Variable - Let --> can be changed

let myNumber = 7

// String - Interpolation --> backtick

`Hello my name is ${fullName}.`

// String - Conversion --> second argument is the base

parseInt("72", 10)

// Array --> same as ruby

const teamMembers = ["item1", "item2", "item3"]

// Object - same as hash in Ruby

const student {
    firstName: "Yves",
    lastName: "Wilken"
}

student["firstName"]

name.firstName

// If Statement --> === equals

// Function --> method in Ruby, stored in variables in JS, arrow function, return is needed

const sum = (firstNumber, secondNumber) => {
    return firstNumber + secondNumber;
};

// Shorthand
const sum = (firstNumber, secondNumber) => firstNumber + secondNumber;

// Call

sum(5, 6);

// Function - Capitalize

const capitalize = (word) => {
    const firstLetter = word[0].toUpperCase();
    const otherLetters = word.substr(1).toLowerCase();
    return `${firstLetter}${otherLetters}`;
};

// DOM - Manipulation

const list = document.querySelector("#players")

const list = document.querySelectorAll("#players li")

list.insertAdjacentHTML("beforeend", "<li>My Name</li>")

