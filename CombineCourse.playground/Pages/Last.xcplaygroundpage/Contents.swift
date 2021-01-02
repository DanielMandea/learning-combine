//: [Previous](@previous)

import Foundation

var numbers = (1...9).publisher

/// Last filtering will emit until finds the last value that meets the condition { $0 % 2 == 0 }
numbers
    .last(where: { $0 % 2 == 0 })
    .sink {
        print($0)
    }

//: [Next](@next)
