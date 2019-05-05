//Aleksandra Klein
import XCTest
@testable import Tasks__Intern_Egnyte

class Tasks__Intern_EgnyteTests: XCTestCase {

    private var teamService: TeamService!
    private var weatherService: WeatherService!

    override func setUp() {
        super.setUp()
        teamService = TeamService()
        weatherService = WeatherService()
    }

    override func tearDown() {
        teamService = nil
        weatherService = nil
        super.tearDown()
    }

    func testFindCorrectTeamName() {
        XCTAssertEqual(teamService.findTeamName(), "Aston_Villa")
    }
    
    func testFindCorrectDay() {
        XCTAssertEqual(weatherService.findTheDay(), 14)
    }
    
    func testPerformanceExample() {
        self.measure {
        }
    }

}
