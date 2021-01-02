//: [Previous](@previous)

import Foundation
import Combine

let publisher1 = PassthroughSubject<String, Never>()
let publisher2 = PassthroughSubject<String, Never>()

let publishers = PassthroughSubject<PassthroughSubject<String, Never>, Never>()

// Will swithc to the latest publisher that is sent
publishers.switchToLatest().sink {
    print($0)
}

publishers.send(publisher1) // switch to publisher 1

publisher1.send("Publisher 1 - Value 1")
publisher1.send("Publisher 1 - Value 2")

publishers.send(publisher2)  // switch to publisher 2

publisher2.send("Publisher 2 - Value 1")
publisher1.send("Publisher 1 - Value 3") // not going to be printed since we swithed to latest publisher <publisher2>
publisher2.send("Publisher 2 - Value 2")


//: [Next](@next)
