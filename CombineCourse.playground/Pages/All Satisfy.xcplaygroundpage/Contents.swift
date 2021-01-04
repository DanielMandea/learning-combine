//: [Previous](@previous)

import Foundation
import Combine

print("Not all even")

let publisher = [1,2,3,4,5,6,7,8].publisher

publisher
    .allSatisfy( {$0 % 2 == 0 })
    .sink { allEven in
        print(allEven)
    }

print("All even")

let publisher1 = [12,2,30,4,50,6,70,8].publisher

publisher1
    .allSatisfy( {$0 % 2 == 0 })
    .sink { allEven in
        print(allEven)
    }


//: [Next](@next)
