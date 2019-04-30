//
//  Weather.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 30/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Foundation

struct Weather {
    var dy: String
    var mxT: String
    var mnT: String
    
    init(day: String, max: String, min: String) {
        dy = day
        mxT = max
        mnT = min
    }
    
}
