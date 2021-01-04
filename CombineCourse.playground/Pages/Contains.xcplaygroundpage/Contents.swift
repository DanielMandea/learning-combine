//: [Previous](@previous)

import Foundation
import Combine

let publisher = ["A", "B", "C", "D", "E"].publisher

print("Contains")
publisher
    .contains("C")
    .sink {
        print($0)
    }

print("Doesn't Contain")
publisher
    .contains("F")
    .sink {
        print($0)
    }

//: [Next](@next)
