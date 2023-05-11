//
//  Person Test.swift
//  TDD Model Objects Lab Tests
//
//  Created by Juliana Nielson on 5/11/23.
//

import XCTest
@testable import TDD_Model_Objects_Lab

final class PersonTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFullName() {
        let person = Person(firstName: "Lula", lastName: "Wilson", birthYear: 1999, hobbies: ["Shopping", "Makeup", "Music"], hairColor: "Pink", height: [5: 3])
        XCTAssertEqual(person.fullName, "Lula Wilson")
    }
    
    func testAge() {
        let person = Person(firstName: "Lula", lastName: "Wilson", birthYear: 1999, hobbies: ["Shopping", "Makeup", "Music"], hairColor: "Pink", height: [5: 3])
        XCTAssertEqual(person.age, 24)
    }
    
    func testHobbies() {
        let person = Person(firstName: "Lula", lastName: "Wilson", birthYear: 1999, hobbies: ["Shopping", "Makeup", "Music"], hairColor: "Pink", height: [5: 3])
        XCTAssertNotNil(person.hobbies)
    }
    
    func testHairColor() {
        let person = Person(firstName: "Lula", lastName: "Wilson", birthYear: 1999, hobbies: ["Shopping", "Makeup", "Music"], hairColor: "Pink", height: [5: 3])
        XCTAssertTrue(person.hairColor == "Pink")
    }
    
    func testHeight() {
        let person = Person(firstName: "Lula", lastName: "Wilson", birthYear: 1999, hobbies: ["Shopping", "Makeup", "Music"], hairColor: "Pink", height: [5: 3])
        XCTAssertFalse(person.height == [4: 0])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
