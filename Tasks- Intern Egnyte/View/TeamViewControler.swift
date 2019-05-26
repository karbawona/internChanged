//Aleksandra Klein
import Cocoa

class TeamViewControler: NSViewController {
    
    var teamService = TeamService()

    @IBOutlet weak var labelFootball: NSTextField!

    override func viewDidLoad() {
        
        guard let message = teamService.findTeamName() else {
            labelFootball.stringValue = "Couldn't find the team name."
            return
        }
        labelFootball.stringValue = "Team with the smallest difference in 'for' and 'against' goals was \(message)"
    }

}
