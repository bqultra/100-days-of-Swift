import UIKit

//Using closures as parameters when they accept parameters - we can fill () with parameters which closure will accept

//This func accept closure as parameter and that closure also have a parameter
func travel(action: (String) -> Void) { //function parameter "action" which accept closure (type String)
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in //closure parameter "place"
    print("I'm going to \(place) in my car")
}


//Using closures as parameters when they return values - we can force closure to return any type of data rather than return Void which means nothing

func travels(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travels { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//Another sample of closure returned in func

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    // start with a total equal to the first value
    var current = values[0]

    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
    }

    // send back the final current value
    return current
}

let numbers = [10, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}

print(sum)


//Shothand parameter names - we can shorten our code using closure because Swift knows that our function will accept parameters with declared type and also will return calue so we don't have to write it agin in our closure

//Instead of this
travels { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//We can use this
travels { place in
    "I'm going to \(place) in my car"
}

//We can also provide automatic names for closure's parameters by using $ and number counting from 0
travel {
    "I'm going to \($0) in my car"
}
//Swift name our parameters like thi: $0, $1, $2...



//Advanced closures

//Closures with multiple parameters
func traveled(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let descriptions = action("London", 60)
    print(descriptions)
    print("I arrived!")
}

//We use shorthand closure's parameter names
traveled {
    "I'm going to \($0) at \($1) miles per hour."
}


//Returning closures from functions - we can return closures from a function; We use double ->; First dash specify func return value when the second specify closures return value

func travelss() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travelss()
result("London")


//Capturing values - if we use values inside our closure Swift captures them and they can be modified even they don't exist anymore

//If we set a var with a counter it will go always up when we call our function which parameter is closure

func traveler() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let resulter = traveler()
resulter("London")


//Random number generator without repeats
func makeRandomNumberGenerator() -> () -> Int {
    
    var previousNumber = 0
    
    return {
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}

let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}
