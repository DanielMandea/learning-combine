//: [Previous](@previous)

import Foundation

// .map usage

let formatter = NumberFormatter()
formatter.numberStyle = .spellOut

// Ex where we define String specific as return value for map
[123, 68, 98].publisher.map { value -> String in
    formatter.string(from: NSNumber(integerLiteral: value)) ?? ""
}.sink {
    print($0)
}

// Ex where it infers string from the result
[123, 68, 98].publisher.map {
    formatter.string(from: NSNumber(integerLiteral: $0)) ?? ""
}.sink {
    print($0)
}

//: [Next](@next)
