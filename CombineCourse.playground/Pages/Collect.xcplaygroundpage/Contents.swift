
//: [Previous](@previous)

import Foundation
import Combine

// Combine stuff

// 1. Sync

["A", "B", "C"].publisher.sink { value in
    // prints each value individually
    print(value)
}

// 2. Collect

["A", "B", "C"].publisher.collect().sink {
    // Prints all values once it collects all
    print($0)
}


// 3. Collect in chunks
["A", "B", "C", "D", "E"].publisher.collect(2).sink {
    // Prints all values in collected chunks
    print($0)
}

//: [Next](@next)

