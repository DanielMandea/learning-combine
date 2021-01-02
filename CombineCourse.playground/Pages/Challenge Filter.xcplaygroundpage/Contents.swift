//: [Previous](@previous)

import Foundation
// Challenge Filter

let valuesPublisher = (1...100).publisher

valuesPublisher
    .dropFirst(50)
    .prefix(20)
    .filter { $0 % 2 == 0 }
    .sink {
        print($0)
    }

//: [Next](@next)
