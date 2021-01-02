//: [Previous](@previous)

import Foundation

var numbers = (1...10).publisher

/// Will emit only the number of values provided to prefix starting from the begining
numbers
    .prefix(2)
    .sink {
        print($0)
    }

/// Will emit from the begining while condition is meet 
numbers
    .prefix(while: { $0 < 3 })
    .sink {
        print($0)
    }

//: [Next](@next)
