//: [Previous](@previous)

import Foundation
import Combine

var numbers = [1,3,-45,30,70,100].publisher

// emits min from the array
numbers
    .min()
    .sink {
        print($0)
    }

// emits max from the array 
numbers
    .max()
    .sink {
        print($0)
    }

//: [Next](@next)
