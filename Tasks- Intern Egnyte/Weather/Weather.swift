//
//  Weather.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 30/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Foundation

struct Weather {
    
  private var day: String
  private var maxTemperature: String
  private var minTemperatue: String
    
    init(dayOfMonth: String, maxTemp: String, minTemp: String) {
        day = dayOfMonth
        maxTemperature = maxTemp
        minTemperatue = minTemp
    }
    
    public func getDay() -> String {
        return day
    }
    
    public func getMaxTemperature() -> String {
        return maxTemperature
    }
    
    public func getMinTemperature() -> String {
        return minTemperatue
    }
}
