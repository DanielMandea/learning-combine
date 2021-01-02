//: [Previous](@previous)

import Foundation

var fruits = "apple apple apple watermelon banana banana apple mango orange apple".components(separatedBy: " ").publisher

fruits
    .removeDuplicates()
    .sink {
    print($0)
}

//: [Next](@next)
