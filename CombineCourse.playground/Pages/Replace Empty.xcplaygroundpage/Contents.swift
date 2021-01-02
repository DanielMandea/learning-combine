//: [Previous](@previous)

import Foundation
import Combine

let empty = Empty<Int, Never>()

empty
    .replaceEmpty(with: 2)
    .sink(receiveCompletion: { print($0) }, receiveValue: {print($0)})


//: [Next](@next)
