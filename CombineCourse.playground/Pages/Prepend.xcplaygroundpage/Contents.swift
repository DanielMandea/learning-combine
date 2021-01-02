//: [Previous](@previous)

import Foundation
import Combine

let numbers = (1...5).publisher
let publisher2 = (500...510).publisher

numbers
    .prepend(101, 102)
    .prepend(-1, -2)
    .prepend([1, 2])
    .prepend(publisher2)
    .sink {
        print($0)
    }

//: [Next](@next)
