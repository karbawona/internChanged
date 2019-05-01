import Foundation

struct Files {
    
    var content: String
    
    mutating func downloadFile (nameURL: String) {
        
        let url = URL(string: nameURL)!
        
        do {
            content.self = try String(contentsOf: url)
        } catch {
            print(error)
        }
    }
    
    func getContent() -> String {
        
        if "" != content {
          return content
        } else { return "File is empty."}
    }
}

