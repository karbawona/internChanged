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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fileWeather.downloadFile(nameURL: urlWeather)
        labelDay.stringValue = fileWeather.getContent()
        createArrayWeather()
    }
    



    func createArrayWeather() {

        let temp = fileWeather.getContent().components(separatedBy: "\n")
        print (temp)
        
        var arrayObjs: Array <Weather> = []

        for index in 2...temp.count-3 {
        let temp2 = temp[index].split(separator: " ", maxSplits: 3)
        print (temp2)
            arrayObjs.append( Weather(day: String(temp2[0]), max: String(temp2[1]), min: String(temp2[2]) ))
            print(arrayObjs[index-2])
           }
    }
    
}
