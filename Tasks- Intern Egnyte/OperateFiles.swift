//
//  OperateFiles.swift
//  Tasks- Intern Egnyte
//
//  Created by Ola on 29/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Foundation

struct Files {
    
    var content: String
    
    mutating func downloadFile (nameURL: String) {
        
        let url = URL(string: nameURL)!
        
        do {
            content.self = try String(contentsOf: url)
            print (content)
        } catch {
            print(error)
        }
    }
    
    func getContent() -> String {
        
        if content != "" {
          return content
        } else { return "pusty plik"}
    }

}
