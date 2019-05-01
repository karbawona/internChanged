//
//  Tasks__Intern_EgnyteTests.swift
//  Tasks- Intern EgnyteTests
//
//  Created by Ola on 01/05/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import XCTest
@testable import Tasks__Intern_Egnyte

class Tasks__Intern_EgnyteTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFindCorrectTeamName() {
        let teamService = TeamService()
        XCTAssertEqual(teamService.findTeamName(), "Aston_Villa")
    }
    
    func testFindCorrectDay() {
        let weatherService = WeatherService()
        XCTAssertEqual(weatherService.findTheDay(), 14)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
