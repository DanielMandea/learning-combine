//: [Previous](@previous)

import Foundation
import Combine

let publisher = ["A", "B", "C", "D", "E", "F"].publisher

print("First")

publisher
    .first()
    .sink {
        print($0)
    }


publisher
    .first(where: {"Cat".contains($0)})
    .sink {
        print($0)
    }

print("Last")

publisher
    .last()
    .sink {
        print($0)
    }


publisher
    .last(where: {"Cat".contains($0)})
    .sink {
        print($0)
    }

//: [Next](@next)
