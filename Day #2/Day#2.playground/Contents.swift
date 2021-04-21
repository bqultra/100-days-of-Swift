import UIKit

//Arrays - collection of data starting from 0 index

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

//This is an Array
let beatles = [john, paul, george, ringo]

//Reading value from an array
beatles[1] //returns index 1 of an Array

//If we are using type annotations they are written inside brackets: [String], [Int], [Double], [Bool]


//Sets - colection of data but it's unordered and cannot store duplicates; it's easier to check if Set contains X item than in an Array (Array check item by item starting from the first one)

//We pass an array to a Set
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"]) //there are only red, green and blue in the output - duplicates cannot be stored


//Tuples - data collection which stores several values in a single value
/*
 - We can't add or remove items inside but we can change values
 - We can't change type of values inside them
 - We can access them by using numerical positions or by their defined names
 */

var name = (first: "Taylor", last: "Swift")

//Access
name.0 //Taylor
name.last //Swift
name.1 = "Messi"


//Arrays - Sets - Tuples

//If we want to set specific and precise values we use Tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//If we need a unique collection of data to check specific item quickly we use Sets
let set = Set(["aardvark", "astronaut", "azalea"])

//If we need values that can contain duplicates or have them ordered we use Arrays
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]


//Arrays - duplicates, order
//Tuples - fixed values and types
//Sets - no duplicates and quick access


//Dictionaries - collection of data but we can store it under anything we want - most common is using strings

//The identifier is called a key which identifies our values in a dictionary

//Data is stored unordered

let heights = [
    "Taylor Swift": 1.78, // identifier(key): value
    "Ed Sheeran": 1.73
]

//Access - returns value of a key
heights["Taylor Swift"]

//When we access key with a value that doesn't exist Swift will return "nil". But we can use default return when there is a missing value for a key

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Charlotte", default: "Unknown"]

//When using type annotations we use [String: Double], [String: String] etc...


//Creating empty collections

//We can create empty array, dictionary or a set by typing their types and opening and closing parentheses

//Empty dictionary
var teams = [String: String]()
//or
var scores = Dictionary<String, Int>()
//Adding data
teams["Paul"] = "Red"

//Empty array
var results = [Int]()
//or
var result = Array<Int>()

//Empty Set - it's done differently
var words = Set<String>()
var numbers = Set<Int>()


//Enumerations(enums) - defining group of values to make them easier to use; it's helpful because we can do a typo writing a single string

enum Result {
    case success
    case failure
}

let result4 = Result.failure


//Enums associated values - this lets us attach more specific information to our cases in enums

//Rather than

enum Activity {
    case bored
    case running
    case talking
    case singing
}

//We can use

enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

//So we can tell about specific information
let talking = Activity2.talking(topic: "football")

//Each case can have may associated values
enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}


//Enum raw values - we can store for example int value for each case to use it later
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

//Swift will asign each of those a number starting from 0

//We can use earth by accessing:
let earth = Planet(rawValue: 2)

//We can start from 1
enum Planets: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
