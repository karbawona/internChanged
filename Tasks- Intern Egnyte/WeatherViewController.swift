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
        findSmallestTemp()
    }
    
    func findSmallestTemp() {
//        for char in fileWeather.content {
//            print("Found character: \(char)")
//        }
        print(fileWeather.content)
    }
    
}
