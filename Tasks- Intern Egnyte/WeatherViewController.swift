//
//  WeatherViewController.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 29/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Cocoa

let urlWeather = "http://codekata.com/data/04/weather.dat"
var fileWeather = Files(content: "")


class WeatherViewController: NSViewController {

    @IBOutlet weak var labelDay: NSTextField!
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
        fileWeather.downloadFile(nameURL: urlWeather)
        labelDay.stringValue = fileWeather.getContent()
    }
    
    
}
