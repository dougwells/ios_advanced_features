//: Playground - noun: a place where people can play

import UIKit

var salutation = "Hello"
var name = "Doug"
var greeting = salutation + " " + name
print(greeting)

for char in greeting.characters {
    print(char)
}

//Convert to NSString type for more methods
let newTypeGreeting = NSString(string: greeting)

//NSString Methods

    //Substring
        newTypeGreeting.substring(to: 5)
        newTypeGreeting.substring(from: 0)
        NSString(string: newTypeGreeting.substring(from: 6)).substring(to:3)
newTypeGreeting.substring(with: NSRange(location:6, length: 3))

    //Contains character
if newTypeGreeting.contains("Doug") { print("yep!") }

    //Split longer string based on spaces

newTypeGreeting.components(separatedBy: " ")//["Hello", "Doug"]

    //Convert case
    newTypeGreeting.uppercased
    newTypeGreeting.lowercased

let text = "123045780984"
if let rangeOfZero = text.range(of: "0", options: .backwards) {
    // Found a zero
    let suffix = String(text.characters.suffix(from: rangeOfZero.upperBound)) // "984"
}

