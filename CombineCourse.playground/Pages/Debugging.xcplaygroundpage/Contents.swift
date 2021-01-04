//: [Previous](@previous)

import Foundation
import Combine

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid Url")
}

let publisher = URLSession.shared.dataTaskPublisher(for: url)
let subscription = publisher
    // We can debug using handleEvents that shows all the evens
    .handleEvents(receiveSubscription: {_ in print("Received Subscription")}, receiveOutput: { _, _ in print("Received Output")}, receiveCompletion: { _ in print("Received Complition") }, receiveCancel: { print("Received Completion") }, receiveRequest: { _ in print("Received Request")})
    // Debug using print
    .print("Debug")
    .sink(receiveCompletion: { print($0) }, receiveValue: { data, response in
        print(data)
    })

//: [Next](@next)
