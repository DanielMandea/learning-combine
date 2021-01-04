//: [Previous](@previous)

import Foundation
import Combine



guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid Url")
}

let subject = PassthroughSubject<Data, URLError>()

// Will reuse the same data fetched

let request = URLSession.shared.dataTaskPublisher(for: url).map(\.data).print().multicast(subject: subject)

let subscription1 = request.sink(receiveCompletion: { _ in } , receiveValue: {
    print("Subscription nr 1")
    print($0)
})

let subscription2 = request.sink(receiveCompletion: { _ in } , receiveValue: {
    print("Subscription nr 2")
    print($0)
})

var subscription3 = request.sink(receiveCompletion: {_ in}, receiveValue: {
    print("Subscription nr 3")
    print($0)
})

request.connect()
subject.send(Data())

//: [Next](@next)
