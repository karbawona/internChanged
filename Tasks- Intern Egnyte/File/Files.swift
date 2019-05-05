//Aleksandra Klein
import Foundation

class Files {
    
    var content: String
    
    init(cont: String) {
        content = cont
    }
    
    func downloadFile (nameURL: String) {
        do {
            content.self = try String(contentsOf: URL(string: nameURL)!)
        } catch {
            print(error)
        }
    }
    
    func getContent() -> String? {
        if "" != content {
            return content
        } else {
            return nil
        }
    }
}
