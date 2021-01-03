//: [Previous](@previous)

import Foundation
import Combine

/// Combines values from multiple publishers and returns latest value

let publisher1 = PassthroughSubject<Int, Never>()
let publisher2 = PassthroughSubject<String, Never>()

publisher1.combineLatest(publisher2).sink {
    print("P1: \($0), P2: \($1)")
}

publisher1.send(1)
// After sending 1 there will be no output

publisher2.send("A")
// Will emit P1: 1, P2: A

publisher2.send("B")
// Will emit latest value after both sent values P1: 1, P2: A  / P1: 1, P2: B

//: [Next](@next)
