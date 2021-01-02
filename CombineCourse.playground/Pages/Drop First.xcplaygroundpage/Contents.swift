//: [Previous](@previous)

import Foundation

var numbers = (1...9).publisher

/// Drop first wil drop the first <<number>> of values emited by the producer 
numbers
    .dropFirst(5)
    .sink {
        print($0)
    }

//: [Next](@next)
