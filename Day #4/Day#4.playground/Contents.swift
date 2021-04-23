import UIKit

//For loops - we can run some code repeatedly until a condition is false; generally used for sequences (like numbers 1...10 etc.)

let count = 1...10

//Returns all numbers in "count" range
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]


//Returns values from an array
for album in albums {
    print("\(album) is on Apple Music")
}

//If we are not using constants we can use underscore in our for
print("Players gonna ")

for _ in 1...5 {
    print("play")
}

//While loops - loop code will be running until the condition is false; We can keep our loop going until it's ready to stop
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")


//Repeat loops - it's almost the same as While loop, but we have a condition to check at the end; Code inside loop will be always executed at least once
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

//.shuffle() - we can create copy of an array and randomize it's order


//Exiting loops - we can exit a loop in any time with break keyword
var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break //the rest of a loop gets skipped
    }

    countDown -= 1
}


//Exiting multiple loops - a loop in a loop is called a nested loop; We can exit from nested loop by giving first loop a label and the inner loop break (label here)

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//Here these loops stop running when we find secretCombination
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop2: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop2
            }
        }
    }
}


//Skipping elements - if we want to skip current item in our loop we can use continue keyword; Swift will skip the rest of the body loop and go to the next item
for i in 1...10 {
    if i % 2 == 1 {
        continue //it skips on to the next number because we met with an odd number
    }

    print(i)
}


//Infinite loops - loops that have no end or will end when we are ready

var counter = 0

while true {
    print(" ")
    counter += 1
    //Loop will run until it meets break
    if counter == 273 {
        break
    }
}
