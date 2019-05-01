//
//  WeatherService.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 01/05/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Foundation

struct WeatherService {
    
    private let URL_WEATHER = "http://codekata.com/data/04/weather.dat"
    private var fileWeather = Files(content: "")
    
    init() {
        fileWeather.downloadFile(nameURL: URL_WEATHER)
    }
    
    func findTheDay() -> Int {
        return findDayWithSmallestTemperatureSpread(weatherObjects: createArrayOfWeatherObjects())
    }
    
    private func findDayWithSmallestTemperatureSpread (weatherObjects: Array <Weather>) -> Int {
        var spreads : Array <Int> = []
        
        for index in weatherObjects {
            spreads.append((removeStarSignAndParseToInt(index.getMaxTemperature()) - removeStarSignAndParseToInt(index.getMinTemperature())))
        }
        
        return spreads.firstIndex(of: spreads.min()!)! + 1
    }
    
    private func createArrayOfWeatherObjects() -> Array <Weather> {
        var arrayOfWeatherObjects: Array <Weather> = []
        let arrayOfWeatherRows = fileWeather.getContent().components(separatedBy: "\n")
        var splittedWeatherAttributes: Array <String.SubSequence> = []
        
        for index in 2 ... arrayOfWeatherRows.count - 3 {
            splittedWeatherAttributes = arrayOfWeatherRows[index].split(separator: " ", maxSplits: 3)
            arrayOfWeatherObjects.append(Weather(dayOfMonth: String(splittedWeatherAttributes[0]), maxTemp: String(splittedWeatherAttributes[1]), minTemp: String(splittedWeatherAttributes[2])))
        }
        
        return arrayOfWeatherObjects
    }
    
    private func removeStarSignAndParseToInt(_ text: String) -> Int {
        if nil != Int(text) {
            return Int(text)!
        } else {
            return Int(text.replacingOccurrences(of: "*", with: ""))!
        }
    }
    
}
