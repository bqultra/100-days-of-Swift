import UIKit

//Functions - they let us re-use code so we can run them in lots of places
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp() //running function


//Function with parameters - we can send values to use them inside our function (so called parameters)
func square(number: Int) { //number is a parameter
    print(number * number)
}

square(number: 8) //we pass our parameter when calling a func


//Returning values - functions can send data; we use a dash after parameters and tell Swift what type of data will be returned and then use return keyword inside our function

func square2(number2: Int) -> Int {
    return number2 * number2
}
let result = square2(number2: 8)
print(result)

//We can skip return keyword if we have on expression
func doMath() -> Int {
    return 5 + 5 //with
}

func doMoreMath() -> Int {
    5 + 5 //without
}

//If we need conditions we can use Ternary operator to use it as a single expression
func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

//We can return multiple values simply using Tuples in our fucntion; it helps with strictly setting name of a value we are going to use
func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.first)
