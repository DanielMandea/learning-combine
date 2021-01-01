//: [Previous](@previous)

import Foundation
import Combine

// Example for how to acces map with key path 

struct Point {
    var x: Int
    var y: Int
}


var publisher = PassthroughSubject<Point, Never>()

publisher.map(\.x, \.y).sink { x, y in
    print("X is \(x), Y is \(y)")
}

publisher.send(Point(x: 2, y: 10))


//: [Next](@next)
