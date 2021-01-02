//: [Previous](@previous)

import Foundation

/// Compact map removes nil values and trasforms to some certain value 

var numbers = ["1.23", "a", "b", "4.56", "7.8", "c"].publisher.compactMap { Float($0) }.sink {
    print($0)
}

//: [Next](@next)
