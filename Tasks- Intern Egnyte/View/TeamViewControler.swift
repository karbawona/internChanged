//Aleksandra Klein
import Cocoa

class TeamViewControler: NSViewController {
    
    @IBOutlet weak var labelFootball: NSTextField!
    var teamService: TeamService?

    override func viewDidLoad() {
        super.viewDidLoad()
        teamService = TeamService()
        
        guard let message = teamService?.findTeamName() else {
            labelFootball.stringValue = "Couldn't find the team name."
            return
        }
        labelFootball.stringValue = "Team with the smallest difference in 'for' and 'against' goals was \(message)"
    }

}
