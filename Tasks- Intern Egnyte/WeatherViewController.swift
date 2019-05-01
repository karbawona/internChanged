//
//  WeatherViewController.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 29/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Cocoa


class WeatherViewController: NSViewController {
    
    let urlWeather = "http://codekata.com/data/04/weather.dat"
    var fileWeather = Files(content: "")
    @IBOutlet weak var labelDay: NSTextField!
    var arrayObjsWeather : Array <Weather> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fileWeather.downloadFile(nameURL: urlWeather)
        arrayObjsWeather = createArrayWeather()
        labelDay.stringValue = "The smallest spread temperature was \( calculateTemp(arrayObjects: arrayObjsWeather)) day"
    }
    

    func createArrayWeather() -> Array <Weather> {

        let temp = fileWeather.getContent().components(separatedBy: "\n")

        var arrayObjects: Array <Weather> = []

        for index in 2...temp.count-3 {
        let temp2 = temp[index].split(separator: " ", maxSplits: 3)
            
            arrayObjects.append( Weather(day: String(temp2[0]), max: String(temp2[1]), min: String(temp2[2]) ))

           }
        return arrayObjects
    }

    
    

    func calculateTemp (arrayObjects: Array <Weather>) -> Int {


        var tempSpread : Array <Int> = Array()

        for index in arrayObjects {

            var minTemp : Int
            var maxTemp : Int

            if Int(index.mnT) != nil {
                minTemp = Int(index.mnT)!
            } else {
                minTemp = Int( index.mnT.replacingOccurrences(of: "*", with: ""))!
            }

            if Int(index.mxT) != nil {
                maxTemp = Int(index.mxT)!
            } else {
                maxTemp = Int( index.mxT.replacingOccurrences(of: "*", with: ""))!
            }
            tempSpread.append((maxTemp - minTemp))
        }

        return tempSpread.firstIndex(of: tempSpread.min()!)! + 1
    }

}
