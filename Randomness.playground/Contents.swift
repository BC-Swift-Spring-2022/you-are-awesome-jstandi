import UIKit

let diceRoll = Int.random(in: 1...6)
print("You rolled a \(diceRoll)")

let randomDecimal = Double.random(in: -1.0...1.0)
print("Random decimal is \(randomDecimal)")

let trueOrFalse = Bool.random()
print("The answer is \(trueOrFalse)")

let result = (Int.random(in: 1...4)) + (Int.random(in: 1...4)) + (Int.random(in: 1...4))
print("You rolled a", result)

let coinFlip = Bool.random()
if coinFlip {
    print("Heads")
} else {
    print("False")
}

let messages = ["You are Awesome!", "You are Great!", "You are Amazing!", "You are the bomb!"]
let randomMessage = messages[Int.random(in: 0...messages.count-1)]
print(randomMessage)

var names = ["Jack", "Nico", "George", "Bruno"]
let shuffledNames = names.shuffled()
print("names = \(names)")
print("shuffledNames = \(shuffledNames)")
print("")
names.shuffle()
print("names after shuffling: \(names)")

let sortedNames = names.sorted()
print("sortedNames = \(sortedNames)")
let reverseSortedNames = names.sorted(by: >)
print("reverseSortedNames = \(reverseSortedNames)")
