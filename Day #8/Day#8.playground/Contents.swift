import UIKit

//Structs - we can create our own types with variables, constants and func in them and use them outside

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

//In comparision with tuples, structs are mostly used when we are using data multiple times (when we are calling values)


//Computed properties - we can create variable which returns different values depending on the other properties

struct Sports {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sports(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


//Property observers - they let us run code before or after any property changes; we simply use willSet or didSet

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete") //it will print statement every time we set amount
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
