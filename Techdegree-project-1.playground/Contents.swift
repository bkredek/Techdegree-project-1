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

//Teams and the league

var teamDragons: [[String: Any]] = []

var teamSharks: [[String: Any]] = []

var teamRaptors: [[String: Any]] = []

var experiencedPlayers: [[String: Any]] = []

var inexperiencedPlayers: [[String: Any]] = []

var Players: [[String: Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

var theLeague: [[String: Any]] = []

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
//Sorting players according to height and printing teams avr height (Extra Credits)

func sortPlayers(){
    
    var tempBool: Bool = true
    experiencedPlayers.sort(by: {if let pl1 = $0["height"] as? Int,let pl2 = $1["height"] as? Int{
                                    tempBool = pl1 > pl2 }; return tempBool})
    inexperiencedPlayers.sort(by: {if let pl1 = $0["height"] as? Int,let pl2 = $1["height"] as? Int{
                                    tempBool = pl1 < pl2 }; return tempBool})

}
func avrHeight(of team: [[String: Any]]) -> Double{
    
    var avgTemp: Double = 0
    
    for player in team{
        if let height = player["height"] as? Int{
            avgTemp += Double(height)
        }
    }
    
    return avgTemp / Double(team.count)
}

func printAvgHeight(){
    print("Average height of Raptors is: \(avrHeight(of: teamRaptors))")
    print("Average height of Sharks is: \(avrHeight(of: teamSharks))")
    print("Average height of Dragons is: \(avrHeight(of: teamDragons))")
}

//Putting players into teams

func putPlayerInTeam(from experience: [[String: Any]]){
    for player in experience{
        if teamRaptors.count > teamDragons.count{
            teamDragons.append(player)
        }else if teamDragons.count > teamSharks.count{
            teamSharks.append(player)
        }else{
            teamRaptors.append(player)
        }
    }
}

//Making teams with sorted players

func makeTeams(){
    getExperiencedPlayer(from: Players)
    sortPlayers()
    putPlayerInTeam(from: experiencedPlayers)
    putPlayerInTeam(from: inexperiencedPlayers)
}

//Making a leauge

func makeALeague(){
    for player in teamDragons{
        var teamName = player
        teamName["team"] = "Dragons"
        theLeague.append(teamName)
    }
    for player in teamSharks{
        var teamName = player
        teamName["team"] = "Sharks"
        theLeague.append(teamName)
    }
    for player in teamRaptors{
        var teamName = player
        teamName["team"] = "Raptors"
        theLeague.append(teamName)
    }
}

//Creating 18 letters

func makeLetters() -> [String]{
    for player in theLeague{
        var letter: String
        
        if let playerName = player["name"] as? String, let guardianName = player["guardian name"] as? String, let teamName = player["team"] as? String{
            if teamName == "Dragons"{
                letter = "-------------------------------------------------------\nDear \(guardianName), \n \n\(playerName) was assigned to \(teamName) and first training is on \(teamDragonsPractice)\n-------------------------------------------------------"
                letters.append(letter)
            }else if teamName == "Sharks"{
                letter = "-------------------------------------------------------\nDear \(guardianName), \n \n\(playerName) was assigned to \(teamName) and first training is on \(teamSharksPractice)\n-------------------------------------------------------"
                letters.append(letter)
            }else{
                letter = "-------------------------------------------------------\nDear \(guardianName), \n \n\(playerName) was assigned to \(teamName) and first training is on \(teamRaptorsPractice)\n-------------------------------------------------------"
                letters.append(letter)
            }
        }
    }
    return letters
}

func printLetters(){
    for letter in letters{
        print(letter)
    }
}





//Main program

makeTeams()
makeALeague()
makeLetters()
printLetters()
printAvgHeight()













