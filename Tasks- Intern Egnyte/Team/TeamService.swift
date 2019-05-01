import Foundation

struct TeamService {
    
    private let URL_FOOTBALL = "http://codekata.com/data/04/football.dat"
    private var fileFootball = Files(content: "")
    
    init() {
       fileFootball.downloadFile(nameURL: URL_FOOTBALL)
    }
    
    func findTeamName() -> String {
        return findTeamNameWithSmallestForAndAgainstGoalsDelta(teamObjects: createArrayOfTeamObjects())
    }
    
    func createArrayOfTeamObjects() -> Array <Team> {
        var arrayOfRowFootball = fileFootball.getContent().components(separatedBy: "\n")
        var indexToRemove = -1
        var arrayOfTeamObjects: Array <Team> = []
        
        removeUnnecessaryRow(&arrayOfRowFootball, &indexToRemove)
        
        for index in 1 ... arrayOfRowFootball.count - 2 {
            let splittedFootballAtributes = arrayOfRowFootball[index].split(separator: " ")
            
            arrayOfTeamObjects.append( Team(teamName: String(splittedFootballAtributes[1]), fGoals: String(splittedFootballAtributes[6]), aGoals: String(splittedFootballAtributes[8])) )
        }
        
        return arrayOfTeamObjects
    }
    
    func findTeamNameWithSmallestForAndAgainstGoalsDelta (teamObjects: Array <Team>) -> String {
        var delta : Array <Int> = []
        
        for index in teamObjects {
            delta.append(abs(Int(index.getForGoals())! - Int(index.getAgainstGoals())!))
        }
        
        return teamObjects[findIndexOfMinimalDelta(delta)].getName()
    }
    
    fileprivate func removeUnnecessaryRow(_ arrayOfRowFootball: inout [String], _ indexToRemove: inout Int) {
        indexToRemove = findIndexToRemove(arrayOfRowFootball)
        
        if  -1 != indexToRemove {
            arrayOfRowFootball.remove(at: indexToRemove)
        }
    }
    
    fileprivate func findIndexToRemove(_ arrayOfRowFootball: [String]) -> Int {
        for (index, element) in arrayOfRowFootball.enumerated() where element.contains("--") {
            return index
        }
        
        return -1
    }
    
    fileprivate func findIndexOfMinimalDelta(_ delta: [Int]) -> Int {
        return delta.firstIndex(of: delta.min()!)!
    }
}
