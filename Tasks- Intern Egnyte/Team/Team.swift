//
//  Football.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 01/05/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

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
