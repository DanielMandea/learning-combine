//: [Previous](@previous)

import Foundation
import Combine

let numbers = (1...20).publisher

// Divided by 2 
numbers.filter { $0 % 2 == 0 }.sink {
    print($0)
}

// Not divided by 2
numbers.filter { $0 % 2 != 0 }.sink {
    print($0)
}

//: [Next](@next)
