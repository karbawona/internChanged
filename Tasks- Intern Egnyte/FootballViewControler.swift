//
//  FootballViewControler.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 30/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Cocoa


class FootballViewControler: NSViewController {
    
    let urlFootball = "http://codekata.com/data/04/football.dat"
    var fileFootball = Files(content: "")
    @IBOutlet weak var labelFootball: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("football")
        fileFootball.downloadFile(nameURL: urlFootball)
        labelFootball.stringValue = fileFootball.getContent()
    }
    
}
