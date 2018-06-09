//Tech Degree Project 1

import UIKit

//Teams, experience players and The Leauge

var teams: [[String: Any]] = []

var experiencedPlayers: [[String: Any]] = []

var inexperiencedPlayers: [[String: Any]] = []

var TheLeauge: [[String: Any]] = [["name": "Joe Smith",
                                   "height": 42,
                                   "experience": true,
                                   "guardian name": "Jim and Jan Smith"],
                                  ["name": "Jill Tanner",
                                   "height": 36,
                                   "experience": true,
                                   "guardian name": "Clara Tanner"],
                                  ["name": "Bill Bon",
                                   "height": 43,
                                   "experience": true,
                                   "guardian name": "Sara and Jenny Bon"],
                                  ["name": "Eva Gordon",
                                   "height": 45,
                                   "experience": false,
                                   "guardian name": "Wendy and Mike Gordon"]]

//Putting experience and inexperience players in right collections

for player in TheLeauge {
    let experience = player["experience"] as! Bool
    
    if experience
    {
        experiencedPlayers.append(player)
    }
    else
    {
        inexperiencedPlayers.append(player)
    }
}

































