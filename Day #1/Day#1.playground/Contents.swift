import UIKit

//String
var str = "Hello, playground"

//Integer - Int
var age = 21
var population = 8_000_000

//Multi-line strings
var str1 = """
This goes
over multiple
lines
"""

//using \ we get rid of \n in our string
var str2 = """
This goes \
over multiple \
lines
"""

//Double type - we can't add Int and Double variable
var pi = 3.141
var myInt = 1
var myDouble = 1.0

//Boolean type
var awesome = true

//String interpolation - we can type values directly into code by placing variables inside our string
var score = 85
var scored = "Your score was \(score)"
var results = "The test results are here: \(str)"

var city = "Cardiff"
var message = "Welcome to \(city)!"

//Constants - let keyword; We can't change it's value once it's set
let Leo = "Messi"

//Swift is able to infer the type of something based on how you created it, but we can use type annotations

//Type annotations
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

//It can be useful when loading data from, internet to tell Swift it's type

//We can use it to transform Int to Double automatically
var percentage: Double = 99 //result is 99.0

//It's also useful when declaring empty var we're going to use in the future
var name: String
