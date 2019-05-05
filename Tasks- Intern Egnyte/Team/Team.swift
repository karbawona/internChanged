//Aleksandra Klein
import Foundation

struct Team {
    
   private var name: String
   private var forGoals: String
   private var againstGoals: String
    
    init(teamName: String, fGoals: String, aGoals: String) {
        name = teamName
        forGoals =  fGoals
        againstGoals = aGoals
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getForGoals() -> String {
        return forGoals
    }
    
    public func getAgainstGoals() -> String {
        return againstGoals
    }
}
