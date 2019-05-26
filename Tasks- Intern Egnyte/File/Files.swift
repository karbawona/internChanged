//Aleksandra Klein
import Foundation

typealias dataFromURL = (URLResponse?, Data?) -> Void

class Files {
    
    static let sharedInstance = Files()
    
    var content: String = ""
    init(){}
    
    init(URL: String){
        Files.sharedInstance.downloadFile(nameURL: URL, handler: Files.printResult)
    }
    
    static let printResult: dataFromURL = {
        if let data = $1 {
            let sString = String(data: data, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
        } else {
            print("data is nil")
        }
    }

    func downloadFile (nameURL: String, handler: @escaping dataFromURL) {

        let sessionConfiguration = URLSessionConfiguration.default
        let url = URL(string: nameURL)

        if let queryUrl = url {
            var request = URLRequest(url: queryUrl)
            request.httpMethod = "GET"
            let urlSession = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: nil)
            let sessionTask = urlSession.dataTask(with: request){
                (data, response, error) in handler(response, data)
                self.content = String(data: data!, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))!
            }
            sessionTask.resume()
        }
    }

    func getContent() -> String? {
        if("" != self.content){
            return self.content
        }
        return nil;
    }
}
