//: [Previous](@previous)

import Foundation
import Combine

let publisher = ["A", "B", "C", "D", "E"].publisher

print("Output at")

publisher
    .output(at: 2)
    .sink {
        print($0)
    }

print("Output in")

publisher
    .output(in: (0...2))
    .sink {
        print($0)
    }

//: [Next](@next)
