
// Create an individual dictionary for each player

var player1: [String: Any] = [
    "Name": "Joe Smith",
    "Height": 42,
    "Soccer Experience": true,
    "Guardian Name": "Jim and Jan Smith",
]

var player2: [String: Any] = [
    "Name": "Jill Tanner",
    "Height": 36,
    "Soccer Experience": true,
    "Guardian Name": "Clara Tanner",
]

var player3: [String: Any] = [
    "Name": "Bill Bon",
    "Height": 43,
    "Soccer Experience": true,
    "Guardian Name": "Sara and Jenny Bon",
]

var player4: [String: Any] = [
    "Name": "Eva Gordon",
    "Height": 45,
    "Soccer Experience": false,
    "Guardian Name": "Wendy and Mike Gordon",
]

var player5: [String: Any] = [
    "Name": "Matt Gill",
    "Height": 40,
    "Soccer Experience": false,
    "Guardian Name": "Charles and Sylvia Gill",
]

var player6: [String: Any] = [
    "Name": "Kimmy Stein",
    "Height": 41,
    "Soccer Experience": false,
    "Guardian Name": "Bill and Hillary Stein",
]

var player7: [String: Any] = [
    "Name": "Sammy Adams",
    "Height": 45,
    "Soccer Experience": false,
    "Guardian Name": "Jeff Adams",
]

var player8: [String: Any] = [
    "Name": "Karl Saygan",
    "Height": 42,
    "Soccer Experience": true,
    "Guardian Name": "Heather Bledsoe",
]

var player9: [String: Any] = [
    "Name": "Suzane Greenberg",
    "Height": 44,
    "Soccer Experience": true,
    "Guardian Name": "Henrietta Dumas",
]

var player10: [String: Any] = [
    "Name": "Sal Dali",
    "Height": 41,
    "Soccer Experience": false,
    "Guardian Name": "Gala Dali",
]

var player11: [String: Any] = [
    "Name": "Joe Kavalier",
    "Height": 39,
    "Soccer Experience": false,
    "Guardian Name": "Sam and Elaine Kavalier",
]

var player12: [String: Any] = [
    "Name": "Ben Finkelstein",
    "Height": 44,
    "Soccer Experience": false,
    "Guardian Name": "Aaron and Jill Finkelstein",
]

var player13: [String: Any] = [
    "Name": "Diego Soto",
    "Height": 41,
    "Soccer Experience": true,
    "Guardian Name": "Robin and Sarika Soto",
]

var player14: [String: Any] = [
    "Name": "Chloe Alaska",
    "Height": 47,
    "Soccer Experience": false,
    "Guardian Name": "David and Jamie Alaska",
]

var player15: [String: Any] = [
    "Name": "Arnold Willis",
    "Height": 43,
    "Soccer Experience": false,
    "Guardian Name": "Claire Willis",
]

var player16: [String: Any] = [
    "Name": "Phillip Helm",
    "Height": 44,
    "Soccer Experience": true,
    "Guardian Name": "Thomas Helm and Eva Jones",
]

var player17: [String: Any] = [
    "Name": "Les Clay",
    "Height": 42,
    "Soccer Experience": true,
    "Guardian Name": "Wynonna Brown",
]

var player18: [String: Any] = [
    "Name": "Herschel Krustofski",
    "Height": 45,
    "Soccer Experience": true,
    "Guardian Name": "Hyman and Rachel Krustofski",
]

// Add all players' dictionaries to 'players' array

var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Create Teams' Arrays

var teamSharks = [[String: Any]]()
var teamDragons = [[String: Any]]()
var teamRaptors = [[String: Any]]()

// Create empty arrays for experiencedPlayers and inexperiencedPlayers

var experiencedPlayers = [[String: Any]]()

var inexperiencedPlayers = [[String: Any]]()

// Determine tallestPlayer and shortestPlayer (Attempting to 'Exceed expectations') - May not be needed, exploring multiple avenues to exceed expectations

var tallestPlayer = 0
var shortestPlayer = 0

for player in players {
    
    //Determine this players height
    let playerHeight = player["Height"]as! Int
    
    //If shortestPlayer is still initialised as 0, set it to current players height as a starting point
    if shortestPlayer == 0 {
        shortestPlayer = playerHeight
    }
    
    if playerHeight > tallestPlayer {
        tallestPlayer = playerHeight
    }
    
    if playerHeight < shortestPlayer {
        shortestPlayer = playerHeight
    }
    
}

print(tallestPlayer)
print(shortestPlayer)

// Sort experiencedPlayers from inexperiencedPlayers

for player in players{
    
    let isExperienced = player["Soccer Experience"]as! Bool
    
    if isExperienced {
        // If player is experienced, add them to experiencedPlayers
        experiencedPlayers.append(player)
        
    }
    else if !isExperienced {
        // If player is inexperienced, add them to inexperiencedPlayers
        inexperiencedPlayers.append(player)
        
    }

}














