//: [Previous](@previous)

import Foundation

var numbers = (1...9).publisher

/// First filtering will emit until finds the first value that meets the condition { $0 % 2 == 0 }
numbers
    .first(where: { $0 % 2 == 0 })
    .sink {
        print($0)
    }

//: [Next](@next)
