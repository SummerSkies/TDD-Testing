//
//  Person.swift
//  TDD Model Objects Lab
//
//  Created by Juliana Nielson on 5/11/23.
//

import Foundation

class Person {
    let firstName: String
    let lastName: String
    let birthYear: Int
    let hobbies: [String]?
    let hairColor: String
    let height: [Int: Int]
    
    init(firstName: String, lastName: String, birthYear: Int, hobbies: [String], hairColor: String, height: [Int: Int]) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthYear = birthYear
        self.hobbies = hobbies
        self.hairColor = hairColor
        self.height = height
    }
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    var age: Int {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        let currentYear = Int(dateFormatter.string(from: date))
        
        let actualAge = (currentYear ?? 0) - self.birthYear
        return actualAge
    }
}
