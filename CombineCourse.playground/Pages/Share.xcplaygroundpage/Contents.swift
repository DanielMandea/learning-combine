//: [Previous](@previous)

import Foundation
import Combine

var subscription3: AnyCancellable? = nil

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid Url")
}

// Will reuse the same data fetched

let request = URLSession.shared.dataTaskPublisher(for: url).map(\.data).print().share()

let subscription1 = request.sink(receiveCompletion: { _ in } , receiveValue: {
    print("Subscription nr 1")
    print($0)
})
// Will use what was fetched from above subscription
let subscription2 = request.sink(receiveCompletion: { _ in } , receiveValue: {
    print("Subscription nr 2")
    print($0)
})

// Will not emit since was created after req finished
DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
    subscription3 = request.sink(receiveCompletion: {_ in}, receiveValue: {
        print("Subscription nr 3")
        print($0)
    })
}

//: [Next](@next)
