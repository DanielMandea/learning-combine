//: [Previous](@previous)

import Foundation
import Combine

let isReady = PassthroughSubject<Void, Never>()
let taps = PassthroughSubject<Int, Never>()

// Will drop all values until there is no output from the other publisher
taps.drop(untilOutputFrom: isReady).sink {
    print($0)
}

(1...10).forEach { value in
    taps.send(value)
    
    if value == 3 {
        isReady.send()
    }
}

//: [Next](@next)
