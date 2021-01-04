//: [Previous](@previous)

import Foundation
import Combine

let publisher = [1,2,3,4,5,6,7,8].publisher

// Reduce will take the initial provided value and we can acumulate received values and emit single value in the end 

publisher
    .reduce(0) { accumulator, value in
        print("accumulator: \(accumulator), value: \(value)")
        return accumulator + value
    }
    .sink {
        print($0)
    }

//: [Next](@next)
