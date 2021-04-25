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


//Parameter labels - we can use parameter labels inside our function to refer to it
func squared(number: Int) -> Int {
    return number * number
}

let resulted = squared(number: 8)

//We can use two labels - one to use externally and one internally
func sayHello(to name: String) {
    print("Hello, \(name)!") //internally - name
}

sayHello(to: "Taylor") //externally - to


//Omitting parameter labels - we can leave our parameter label by using underscore _
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")


//Default parameters - we can set our parameters default value by using = sign after their type
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)


//Variadic functions - we can pass many parameters when calling a function and print all of them separated by a space; We make this by writing ... after parameter type telling function there will be many parameters

func squares(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squares(numbers: 1, 2, 3, 4, 5)


//Throwing functions - we can throw errors when function fail by marking them as throws before return type and using throw keyword when something goes wrong; It's based on Swift's existing Error types.

enum PasswordError: Error { //enum describes Error we can throw
    case obvious
}

func checkPassword(_ password: String) throws -> Bool { //throws before returned type
    if password == "password" {
        throw PasswordError.obvious //throw when something goes wrong
    }

    return true
}


//Running throwing functions - we run them by using do,try and catch keywords

//do - starts a section of code that might cause a problem
//try - before every func that might throw error
//catch - lets handle errors

//If any errors are thrown inside "do" we move on to catch block
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


//inout parameters - every parameter passed into func is a constant so we can't change it. We can change that by using inout keyword before type of a parameter

func doubleInPlace(number: inout Int) {
    number *= 2
}

//First we need to make an integer; we are passing parameter to func by using & sign
var myNum = 10
doubleInPlace(number: &myNum)
