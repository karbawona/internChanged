//
//  FootballViewControler.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 30/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Cocoa


class FootballViewControler: NSViewController {
    
    let urlFootball = "http://codekata.com/data/04/football.dat"
    var fileFootball = Files(content: "")
    @IBOutlet weak var labelFootball: NSTextField!
    var arrayObjectsFootball : Array <Team> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        print("football")
        fileFootball.downloadFile(nameURL: urlFootball)
      //  labelFootball.stringValue = fileFootball.getContent()
        createArrayFootball()
        labelFootball.stringValue = "Team with the smallest difference in 'for' and 'against' goals was \(findTeamNameWithSmallestForAndAgainstGoalsDelta(arrayObjects: createArrayFootball()))"
    }
    
    func createArrayFootball() -> Array <Team> {
        
        var temp = fileFootball.getContent().components(separatedBy: "\n")
        print (temp)
        var indexToRemove = -1
        var arrayObjects: Array <Team> = []
        
        
        for (index, element) in temp.enumerated() where element.contains("--") {
                indexToRemove = index
            }
        
        if indexToRemove != -1 {
            temp.remove(at: indexToRemove)
        }
        
        for index in 1...temp.count-2 {
            let temp2 = temp[index].split(separator: " ")
            print(temp2)
           
           arrayObjects.append( Team(teamFootball: String(temp2[1]), fGoals: String(temp2[6]), aGoal: String(temp2[8])) )
        
    }
        print(arrayObjects)

        return arrayObjects
    }
    
    
    
    
    func findTeamNameWithSmallestForAndAgainstGoalsDelta (arrayObjects: Array <Team>) -> String {
        var delta : Array <Int> = Array()
        var forGoals : Int
        var againstGoals : Int
        
        for index in arrayObjects {
          forGoals = Int(index.forGoals)!
          againstGoals = Int(index.aginstGoals)!
            
          delta.append(abs(forGoals-againstGoals))
        }
        print(delta)
       return arrayObjects[delta.firstIndex(of: delta.min()!)! ].team
    }
    
    
}
