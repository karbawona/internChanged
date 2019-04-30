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
       var temp = fileWeather.getContent().split(separator: "\n")
        print (temp)
        //let weatherObj = Weather(day: String(temp[0]), max: String(temp[1]), min: String(temp[2]))
       // print(weatherObj.mnT)
    }
    
}
