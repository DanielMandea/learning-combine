//: [Previous](@previous)

import Foundation

["A", "B", "C", nil, "E", "F"].publisher.replaceNil(with: "*").map{
    $0! // replace optional with real value
}.sink {
    print($0)
}

//: [Next](@next)
