//: [Previous](@previous)

import Foundation
import Combine

let publisher = ["A", "B", "C", "D", "E"].publisher
let publisher1 = PassthroughSubject<Int, Never>()

print("Simple count for collection")
publisher
    .count()
    .sink {
        print($0)
    }

print("Count for PassthroughSubject")

publisher1
    .count()
    .sink {
        print($0)
    }

publisher1.send(10)
publisher1.send(10)
publisher1.send(10)
publisher1.send(10)
// It doesn't print the count until we send the finish
publisher1.send(completion: .finished)

//: [Next](@next)
