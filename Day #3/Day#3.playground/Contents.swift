import UIKit

//Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

//When we want to divide number equally to another we can use this:
let number = 465
let isMultiple = number.isMultiple(of: 7)


//Operator overloading - joining data with the same type
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


//Shorthand operators (compound assignment) - we can chane variable fast in place
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


//Comparision operators - we can compare data
let firstScored = 6
let secondScored = 4

firstScored == secondScored //equal
firstScored != secondScored //not equal

firstScored < secondScored //less than
firstScored >= secondScored //greater or equal than

"Taylor" <= "Swift"

//We can even create comparable enums
enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

//This will print "true" because small comes before large in the case list


//Conditions - if statement
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    
    print("Aces – lucky!") //it will run when condition is true
    
} else if firstCard + secondCard == 21 {
    
    print("Blackjack!") //the other condition
    
}
else {
    
    print("Regular cards") //it wil run when condition is false
}


//Combining conditions - it lets us combine conditions together
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 { //&& means "and" so the result will be only displayed when two conditions are true
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 { // || means "or" so there is a result when one of the conditions are true
    print("At least one is over 18")
}

//TIP: It's better to add parentheses for better understanding our conditions mix


//Ternary operator - it's rarely used; It check condition and when it's true it returns second value or third when it's a false
let firstCards = 11
let secondCards = 10
print(firstCards == secondCards ? "Cards are the same" : "Cards are different")


//Switch statements - if we have several conditions we can use switch with cases rather than if and else if
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough //Swift runs code inside case but we can use fallthrough to continue on to the next case
default:
    print("Enjoy your day!") //if there is no case met Swift prints declared default value
}


//Range operators - they let us create ranges
let scores = 85

switch score {
case 0..<50: //..< - this operator create range but exclude the final value (which here is 50); ... - this includes final value
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

let names = ["Piper", "Alex", "Suzanne", "Gloria"]

//With values we can print a range of values
print(names[1...3]) //it will fail when index doesn't have enough values in it
print(names[1...]) //this wil take values from 1 to the end of an array

// ..< - excluding final value
// ... - including final value
