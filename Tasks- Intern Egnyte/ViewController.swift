//
//  ViewController.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 29/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Cocoa

let urlWeather = "http://codekata.com/data/04/weather.dat"
let urlFootbal = "l"
var fileWeather = Files(content: "")

class ViewController: NSViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fileWeather.downloadFile(nameURL: urlWeather)

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

