import Foundation

struct Files {
    
    var content: String
    
    init(cont: String) {
        content = cont
    }
    
    mutating func downloadFile (nameURL: String) {
        do {
            content.self = try String(contentsOf: URL(string: nameURL)!)
        } catch {
            print(error)
        }
    }
    
    func getContent() -> String {
        if "" != content {
            return content
        } else {
            return "File is empty."
        }
    }
}
