//Aleksandra Klein
import Cocoa

class WeatherViewController: NSViewController {
    var weatherService : WeatherService?
    
    @IBOutlet weak var labelDay: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        weatherService = WeatherService()
        
        guard let message = weatherService?.findTheDay() else {
            labelDay.stringValue = "Couldn't find the day."
            return
        }
        labelDay.stringValue = "The smallest spread temperature was on the \(message). day."
    }
}
