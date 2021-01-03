//: [Previous](@previous)

import UIKit
import Combine

let images = ["huston", "denver", "seatle"]
var index = 0

func getImage() -> AnyPublisher<UIImage?, Never> {
    Future<UIImage?, Never> { promise in
        DispatchQueue.global().asyncAfter(deadline: .now() + 3.0) {
            promise(.success(UIImage(named: images[index])))
        }
    }
    .print()
    .map { $0 }
    .receive(on: RunLoop.main)
    .eraseToAnyPublisher()
}

let taps = PassthroughSubject<Void, Never>()

let subscription = taps.map { _ in  getImage() }
    .print()
    .switchToLatest()
    .sink {
        print($0)
    }

// huston
taps.send()

// denver -> will be canced since <seatle> was fired after .5 seconds and this one was not yet finised 
DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
    index += 1
    taps.send()
}

// seatle
DispatchQueue.main.asyncAfter(deadline: .now() + 6.5) {
    index += 1
    taps.send()
}


//: [Next](@next)
