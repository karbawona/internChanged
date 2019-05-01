//
//  Football.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 01/05/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Foundation

struct Team {
    
    var team: String
    var forGoals: String
    var aginstGoals: String
    
    init(teamFootball: String, fGoals: String, aGoal: String) {
        team = teamFootball
        forGoals =  fGoals
        aginstGoals = aGoal
    }
    

}
