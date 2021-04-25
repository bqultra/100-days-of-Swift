import UIKit

//Creating basic closures - we can create function and assign it to a variable to store it adn use it later; we can also pass it as a parameter to another function

let driving = {
    print("I'm driving in my car")
}

driving()

/*
Closures are mostly used when:
 1.Running some code after a delay.
 2.Running some code after an animation has finished.
 3.Running some code when a download has finished.
 4.Running some code when a user has selected an option from your menu.
*/

//Accepting parameters in a closure - to pass parameters we write them in parentheses after opening braces and use "in" after that

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")


//Returning values from closures - we can return values by writing -> just before "in" keyword

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

//We can return value without passing parameters by using () ->

let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}


//Closures as parameters - we can pass closure to use it inside our new function by creating a func with parameter which returns "nothing" so called Void

func travel(action: () -> Void) { // creating empty "func" as a parametr; it wil be used to display our closures printed text
    print("I'm getting ready to go.")
    action() //calling our empty func that will have closures data
    print("I arrived!")
}

travel(action: driving) //calling func with parameter which is a closure - it will be used by calling action()

//Closures are mostly used to fetch data fast - Siri can respond quickly because app send back data in closures


//Trailing closure - we can pass closure directly after calling a function

travel() {
    print("I'm driving in my car")
}

//We can also eliminate parentheses becasue there are no parameters

travel {
    print("I'm driving in my car")
}
