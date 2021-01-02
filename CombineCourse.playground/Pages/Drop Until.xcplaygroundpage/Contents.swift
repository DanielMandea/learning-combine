//: [Previous](@previous)

import Foundation

var numbers = (1...10).publisher

/// Drops all items while condition is meet 
numbers
    .drop(while: { $0 % 3 != 0 })
    .sink {
        print($0)
    }

//: [Next](@next)
