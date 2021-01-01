//: [Previous](@previous)

import Foundation
import Combine

struct School {
    let name: String
    let noOfStudents: CurrentValueSubject<Int, Never>
    
    init(name: String, noOfStudents: Int) {
        self.name = name
        self.noOfStudents = CurrentValueSubject(noOfStudents)
    }
}

let citySchool = School(name: "Scoala Generala Nr 18", noOfStudents: 150)

let school = CurrentValueSubject<School, Never>(citySchool)

school.flatMap {
    $0.noOfStudents
}.sink {
    print($0)
}

let townSchool = School(name: "Scoala Generala Nr 13", noOfStudents: 100)

school.value = townSchool

citySchool.noOfStudents.value += 1
citySchool.noOfStudents.value += 4

//: [Next](@next)
