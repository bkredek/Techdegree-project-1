//Tech Degree Project 1

import UIKit

//Players

let player1: [String: Any] = ["name": "Joe Smith",
                              "height": 42,
                              "experience": true,
                              "guardian name": "Jim and Jan Smith"]
let player2: [String: Any] = ["name": "Jill Tanner",
                              "height": 36,
                              "experience": true,
                              "guardian name": "Clara Tanner"]
let player3: [String: Any] = ["name": "Bill Bon",
                              "height": 43,
                              "experience": true,
                              "guardian name": "Sara and Jenny Bon"]
let player4: [String: Any] = ["name": "Eva Gordon",
                              "height": 45,
                              "experience": false,
                              "guardian name": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["name": "Matt Gill",
                              "height": 40,
                              "experience": false,
                              "guardian name": "Charles and Sylvia Gill"]
let player6: [String: Any] = ["name": "Kimmy Stein",
                              "height": 41,
                              "experience": false,
                              "guardian name": "Bill and Hillary Stein"]
let player7: [String: Any] = ["name": "Sammy Adams",
                              "height": 45,
                              "experience": false,
                              "guardian name": "Jeff Adams"]
let player8: [String: Any] = ["name": "Karl Saygan",
                              "height": 42,
                              "experience": true,
                              "guardian name": "Heather Bledsoe"]
let player9: [String: Any] = ["name": "Suzane Greenberg",
                              "height": 44,
                              "experience": true,
                              "guardian name": "Henrietta Dumas"]
let player10: [String: Any] = ["name": "Sal Dali",
                               "height": 41,
                               "experience": false,
                               "guardian name": "Gala Dali"]
let player11: [String: Any] = ["name": "Joe Kavalier",
                               "height": 39,
                               "experience": false,
                               "guardian name": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["name": "Ben Finkelstein",
                               "height": 44,
                               "experience": false,
                               "guardian name": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["name": "Diego Soto",
                               "height": 41,
                               "experience": true,
                               "guardian name": "Robin and Sarika Soto"]
let player14: [String: Any] = ["name": "Chloe Alaska",
                               "height": 47,
                               "experience": false,
                               "guardian name": "David and Jamie Alaska"]
let player15: [String: Any] = ["name": "Arnold Willis",
                               "height": 43,
                               "experience": false,
                               "guardian name": "Claire Willis"]
let player16: [String: Any] = ["name": "Phillip Helm",
                               "height": 44,
                               "experience": true,
                               "guardian name": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["name": "Les Clay",
                               "height": 42,
                               "experience": true,
                               "guardian name": "Wynonna Brown"]
let player18: [String: Any] = ["name": "Herschel Krustofski",
                               "height": 45,
                               "experience": true,
                               "guardian name": "Hyman and Rachel Krustofski"]
//Teams practice date

let teamDragonsPractice = "March 17, 1pm"
let teamSharksPractice = "March 17, 3pm"
let teamRaptorsPractice = "March 18, 1pm"

//Teams

var teamDragons: [[String: Any]] = []

var teamSharks: [[String: Any]] = []

var teamRaptors: [[String: Any]] = []

var teams = [teamRaptors, teamDragons, teamSharks]

var experiencedPlayers: [[String: Any]] = []

var inexperiencedPlayers: [[String: Any]] = []

var Players: [[String: Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

var letters:[String] = []
//Putting players in experienced and inexperienced collection

func getExperiencedPlayer(from Players: [[String: Any]]){
    for player in Players{
        if let experience = player["experience"] as? Bool{
            if experience{
                experiencedPlayers.append(player)
            }else{
                inexperiencedPlayers.append(player)
            }
        }
    }
}

func putPlayersInTeams(){
    for player in experiencedPlayers{
        if teamRaptors.count < experiencedPlayers.count / teams.count{
            teamRaptors.append(player)
        }else if teamDragons.count < experiencedPlayers.count / teams.count{
            teamDragons.append(player)
        }else{
            teamSharks.append(player)
        }
    }
    for player in inexperiencedPlayers{
        if teamRaptors.count < Players.count / teams.count{
            teamRaptors.append(player)
        }else if teamDragons.count < Players.count / teams.count{
            teamDragons.append(player)
        }else{
            teamSharks.append(player)
        }
    }
}

func makeLetters() -> [String]{
    for player in teamSharks{
        if let guardianName = player["guardian name"] as? String, let playerName = player["name"] as? String{
            let letter = "Dear \(guardianName), \(playerName) was assigned to Sharks team and first training is on \(teamSharksPractice)"
            letters.append(letter)
        }
    }
    for player in teamDragons{
        if let guardianName = player["guardian name"] as? String, let playerName = player["name"] as? String{
            let letter = "Dear \(guardianName), \(playerName) was assigned to Dragons team and first training is on \(teamDragonsPractice)"
            letters.append(letter)
        }
    }
    for player in teamRaptors{
        if let guardianName = player["guardian name"] as? String, let playerName = player["name"] as? String{
            let letter = "Dear \(guardianName), \(playerName) was assigned to Raptors team and first training is on \(teamRaptorsPractice)"
            letters.append(letter)
        }
    }
    return letters
}

func printLetters(){
    for letter in letters{
        print(letter)
    }
}


getExperiencedPlayer(from: Players)
putPlayersInTeams()
makeLetters()
printLetters()















