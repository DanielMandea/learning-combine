//: [Previous](@previous)

import Foundation
import Combine

let numbers = (1...5000).publisher

/// prints all the values published
numbers.sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })

/// Ignore output will ignore published values and will only print finished
numbers.ignoreOutput().sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })

//: [Next](@next)
