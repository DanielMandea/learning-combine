//: [Previous](@previous)

import Foundation
import Combine

let runLoop = RunLoop.main

let subscription = runLoop.schedule(after: runLoop.now, interval: 2.0, tolerance: .milliseconds(100)) {
    print("Timer Fired")
}

runLoop.schedule(after: .init(Date(timeIntervalSinceNow: 3.0))) {
    subscription.cancel()
}

// Timer Subscription

// Supscription that prints some date
let subscriptionTimer = Timer
    .publish(every: 1.0, on: .main, in: .common).autoconnect()
    .sink {
        print($0)
    }

// Counter that returns some counter
let subscriptionTimer2 = Timer
    .publish(every: 2.0, on: .main, in: .common).autoconnect()
    .scan(0) { counter, _ in
        counter + 1
    }
    .sink {
        print($0)
    }


/// Dispatch Queue

let queue = DispatchQueue.main

let source = PassthroughSubject<Int, Never>()

var counter = 0

let cancellable = queue.schedule(after: queue.now, interval: .seconds(1)) {
    source.send(counter)
    counter += 1
}

let subscription3 = source.sink {
    print($0)
}


//: [Next](@next)
