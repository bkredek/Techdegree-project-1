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
                                   "guardian name": "Wendy and Mike Gordon"],
                                  ["name": "Matt Gill",
                                   "height": 40,
                                   "experience": false,
                                   "guardian name": "Charles and Sylvia Gill"],
                                  ["name": "Kimmy Stein",
                                   "height": 41,
                                   "experience": false,
                                   "guardian name": "Bill and Hillary Stein"],
                                  ["name": "Sammy Adams",
                                   "height": 45,
                                   "experience": false,
                                   "guardian name": "Jeff Adams"],
                                  ["name": "Karl Saygan",
                                   "height": 42,
                                   "experience": true,
                                   "guardian name": "Heather Bledsoe"],
                                  ["name": "Suzane Greenberg",
                                   "height": 44,
                                   "experience": true,
                                   "guardian name": "Henrietta Dumas"],
                                  ["name": "Sal Dali",
                                   "height": 41,
                                   "experience": false,
                                   "guardian name": "Gala Dali"],
                                  ["name": "Joe Kavalier",
                                   "height": 39,
                                   "experience": false,
                                   "guardian name": "Sam and Elaine Kavalier"],
                                  ["name": "Ben Finkelstein",
                                   "height": 44,
                                   "experience": false,
                                   "guardian name": "Aaron and Jill Finkelstein"],
                                  ["name": "Diego Soto",
                                   "height": 41,
                                   "experience": true,
                                   "guardian name": "Robin and Sarika Soto"],
                                  ["name": "Chloe Alaska",
                                   "height": 47,
                                   "experience": false,
                                   "guardian name": "David and Jamie Alaska"],
                                  ["name": "Arnold Willis",
                                   "height": 43,
                                   "experience": false,
                                   "guardian name": "Claire Willis"],
                                  ["name": "Phillip Helm",
                                   "height": 44,
                                   "experience": true,
                                   "guardian name": "Thomas Helm and Eva Jones"],
                                  ["name": "Les Clay",
                                   "height": 42,
                                   "experience": true,
                                   "guardian name": "Wynonna Brown"],
                                  ["name": "Herschel Krustofski",
                                   "height": 45,
                                   "experience": true,
                                   "guardian name": "Hyman and Rachel Krustofski"]]

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

































