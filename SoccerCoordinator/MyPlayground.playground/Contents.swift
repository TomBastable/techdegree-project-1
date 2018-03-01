
// Create an individual dictionary for each player

var player1: [String: Any] = [
    "Name": "Joe Smith",
    "Height": 42.0,
    "Soccer Experience": true,
    "Guardian Name": "Jim and Jan Smith",
]

var player2: [String: Any] = [
    "Name": "Jill Tanner",
    "Height": 36.0,
    "Soccer Experience": true,
    "Guardian Name": "Clara Tanner",
]

var player3: [String: Any] = [
    "Name": "Bill Bon",
    "Height": 43.0,
    "Soccer Experience": true,
    "Guardian Name": "Sara and Jenny Bon",
]

var player4: [String: Any] = [
    "Name": "Eva Gordon",
    "Height": 45.0,
    "Soccer Experience": false,
    "Guardian Name": "Wendy and Mike Gordon",
]

var player5: [String: Any] = [
    "Name": "Matt Gill",
    "Height": 40.0,
    "Soccer Experience": false,
    "Guardian Name": "Charles and Sylvia Gill",
]

var player6: [String: Any] = [
    "Name": "Kimmy Stein",
    "Height": 41.0,
    "Soccer Experience": false,
    "Guardian Name": "Bill and Hillary Stein",
]

var player7: [String: Any] = [
    "Name": "Sammy Adams",
    "Height": 45.0,
    "Soccer Experience": false,
    "Guardian Name": "Jeff Adams",
]

var player8: [String: Any] = [
    "Name": "Karl Saygan",
    "Height": 42.0,
    "Soccer Experience": true,
    "Guardian Name": "Heather Bledsoe",
]

var player9: [String: Any] = [
    "Name": "Suzane Greenberg",
    "Height": 44.0,
    "Soccer Experience": true,
    "Guardian Name": "Henrietta Dumas",
]

var player10: [String: Any] = [
    "Name": "Sal Dali",
    "Height": 41.0,
    "Soccer Experience": false,
    "Guardian Name": "Gala Dali",
]

var player11: [String: Any] = [
    "Name": "Joe Kavalier",
    "Height": 39.0,
    "Soccer Experience": false,
    "Guardian Name": "Sam and Elaine Kavalier",
]

var player12: [String: Any] = [
    "Name": "Ben Finkelstein",
    "Height": 44.0,
    "Soccer Experience": false,
    "Guardian Name": "Aaron and Jill Finkelstein",
]

var player13: [String: Any] = [
    "Name": "Diego Soto",
    "Height": 41.0,
    "Soccer Experience": true,
    "Guardian Name": "Robin and Sarika Soto",
]

var player14: [String: Any] = [
    "Name": "Chloe Alaska",
    "Height": 47.0,
    "Soccer Experience": false,
    "Guardian Name": "David and Jamie Alaska",
]

var player15: [String: Any] = [
    "Name": "Arnold Willis",
    "Height": 43.0,
    "Soccer Experience": false,
    "Guardian Name": "Claire Willis",
]

var player16: [String: Any] = [
    "Name": "Phillip Helm",
    "Height": 44.0,
    "Soccer Experience": true,
    "Guardian Name": "Thomas Helm and Eva Jones",
]

var player17: [String: Any] = [
    "Name": "Les Clay",
    "Height": 42.0,
    "Soccer Experience": true,
    "Guardian Name": "Wynonna Brown",
]

var player18: [String: Any] = [
    "Name": "Herschel Krustofski",
    "Height": 45.0,
    "Soccer Experience": true,
    "Guardian Name": "Hyman and Rachel Krustofski",
]

// Add all players' dictionaries to 'players' array

var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Create Teams' Arrays

var teamSharks = [[String: Any]]()
var teamDragons = [[String: Any]]()
var teamRaptors = [[String: Any]]()

var teams = [teamSharks, teamDragons, teamRaptors]

// Create empty arrays for experiencedPlayers and inexperiencedPlayers

var experiencedPlayers = [[String: Any]]()

var inexperiencedPlayers = [[String: Any]]()

// Create function to work out a teams current average height

func teamsAverageHeight(team: [[String:Any]]) -> Double{
    
    if team.count == 0 {
        return 0
    }
    else{
    // Create array of heights
    var playerHeights: [Double] = []
    
    // Add all team member heights to playerHeights
    for player in team {
        let playerHeight = player["Height"]as! Double
        playerHeights.append(playerHeight)
    }
    
    //Add all heights together, divide by the amount of players to find average
    
    var playerHeightTotal = 0.0
    var teamsAverageHeight = 0.0
    
    for height in playerHeights {
        playerHeightTotal = playerHeightTotal + height
    }
    
    teamsAverageHeight = (playerHeightTotal / Double(team.count))
    
    //Return teams average height
    
    return teamsAverageHeight
    }
}

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

// sort experiencedPlayers into teams based on height
    // Calculate the maximum number of experienced players per team
let maxNumberOfExpPlayersPerTeam = (experiencedPlayers.count / teams.count)


for player in experiencedPlayers {
    //loop through all experienced players, if a team has its maximum number of exp players, move onto next team
    if (teamSharks.count < maxNumberOfExpPlayersPerTeam){
        teamSharks.append(player)
    }
    else if teamRaptors.count < maxNumberOfExpPlayersPerTeam {
        teamRaptors.append(player)
    }
    else if teamDragons.count < maxNumberOfExpPlayersPerTeam {
        teamDragons.append(player)
    }
    
}

//In case there's a different number of inexperienced players, calculate the maxmimum per team
let maxNumberOfInExpPlayersPerTeam = (inexperiencedPlayers.count / teams.count)

for player in inexperiencedPlayers {
    //loop through all inexperienced players, if a team has its maximum number of exp players + inexp players, move onto next team until completion
    if (teamSharks.count < maxNumberOfInExpPlayersPerTeam + maxNumberOfExpPlayersPerTeam){
        teamSharks.append(player)
    }
    else if teamRaptors.count < maxNumberOfInExpPlayersPerTeam + maxNumberOfExpPlayersPerTeam {
        teamRaptors.append(player)
    }
    else if teamDragons.count < maxNumberOfInExpPlayersPerTeam + maxNumberOfExpPlayersPerTeam {
        teamDragons.append(player)
    }
    
}

/*
 ------All code below is to balance the teams by Height, while keeping the experience balance in tact. This is to attempt the 'Exceeding Expectation' Mark--------
 */

/////If the Height Margin needs to change, change it here//////
let heightMargin = 1.5

//--Create a function that gives a boolean as to whether or not the teams are within the heightMargin specified--\\

var teamSharkAvgHeight = teamsAverageHeight(team: teamSharks)
var teamDragonAvgHeight = teamsAverageHeight(team: teamDragons)
var teamRaptorAvgHeight = teamsAverageHeight(team: teamRaptors)

func teamsWithinHeightMargin() -> Bool{
    
    //recalculate the average team heights every time the function is called for accuracy
    teamSharkAvgHeight = teamsAverageHeight(team: teamSharks)
    teamDragonAvgHeight = teamsAverageHeight(team: teamDragons)
    teamRaptorAvgHeight = teamsAverageHeight(team: teamRaptors)
    
    //Find the team with the highest and lowest avg height, calculate the different between the two
    let maxAvgHeight = max(teamSharkAvgHeight, teamDragonAvgHeight, teamRaptorAvgHeight)
    let minAvgHeight = min(teamSharkAvgHeight, teamDragonAvgHeight, teamRaptorAvgHeight)
    let heightDifference = maxAvgHeight - minAvgHeight
    
    //if the height difference between the highest and lowest avg is within the height margin specified, then the teams are balanced. If not, then return a false boolean.
    if heightDifference > heightMargin {
        return false
    }
    else if heightDifference <= heightMargin {
        return true
    }
    else{
        return false
    }

}

func balanceTeamsByHeight() {
    
    if teamsWithinHeightMargin() {
        //Teams are already, by chance, within the heightMargin specified. Do nothing else, this is the end of the function - Hooray!
        print("Teams are balanced by Height and Experience without any intervention")
    }
    else if !teamsWithinHeightMargin(){
        
        //Urgh...Teams are not within height margin specified. Let's create some logic that swaps the tallest player from the team with the highest average height, with the shortest player in the team with the lowest average height. May take multiple loops to complete, but should work ok.
        
        //First, work out which teams are the highest / lowest average
        print("Teams are not balanced by height, resolving...")
        
        //Fetch the max avg height and minimum avg height and save to constant
        let maxAvgHeight = max(teamSharkAvgHeight, teamDragonAvgHeight, teamRaptorAvgHeight)
        let minAvgHeight = min(teamSharkAvgHeight, teamDragonAvgHeight, teamRaptorAvgHeight)
        
        //Initialise max / min avg height team strings
        var maxAvgTeam = ""
        var minAvgTeam = ""
        
        //Initialise an empty player dictionary, and a false Boolean to determine if the tallest player is experienced so we can match the shortest player to their experience, so when we switch them the balance of experience is not effected
        var tallestPlayerFromMax: [String: Any] = [:]
        var tallestPlayerIsExperienced: Bool = false
        
        //Initialise empty shortest player dictionary
        var shortestPlayerFromMin: [String: Any] = [:]
        
        
        
        if teamSharkAvgHeight == maxAvgHeight {
            //TeamSharks have the highest avg - set team name to maxAvgTeam string for later.
            maxAvgTeam = "Sharks"
            //Fetch tallest player ready for switch
            tallestPlayerFromMax = getTallestPlayerFromTeam(team: teamSharks)
            //Take note of whether or not the tallest player is experienced
            tallestPlayerIsExperienced = tallestPlayerFromMax["Soccer Experience"]as! Bool
            //Remove that player from the team
            teamSharks = removePlayerFromTeam(playerToRemove: tallestPlayerFromMax, team: teamSharks)
        }
        else if teamDragonAvgHeight == maxAvgHeight {
            //Logic is all the same for this one and below - refer to initial if statement comments.
            maxAvgTeam = "Dragons"
            tallestPlayerFromMax = getTallestPlayerFromTeam(team: teamDragons)
            tallestPlayerIsExperienced = tallestPlayerFromMax["Soccer Experience"]as! Bool
            teamDragons = removePlayerFromTeam(playerToRemove: tallestPlayerFromMax, team: teamDragons)
        }
        else if teamRaptorAvgHeight == maxAvgHeight {
            maxAvgTeam = "Raptors"
            tallestPlayerFromMax = getTallestPlayerFromTeam(team: teamRaptors)
            tallestPlayerIsExperienced = tallestPlayerFromMax["Soccer Experience"]as! Bool
            teamRaptors = removePlayerFromTeam(playerToRemove: tallestPlayerFromMax, team: teamRaptors)
        }
        
        //-------------------//
        
        //Calculate lowest and save shortest player with same experience as the tallestplayer
        
        if teamSharkAvgHeight == minAvgHeight {
            //TeamSharks have the lowest avg - set team name to minAvgHeight string for later
            minAvgTeam = "Sharks"
            //Fetch shortest player with matching experience to tallestplayer ready for switch
            shortestPlayerFromMin = getShortestPlayerFromTeamWithSameExperience(team: teamSharks, experience: tallestPlayerIsExperienced)
            //Remove the shortest player from the team
            teamSharks = removePlayerFromTeam(playerToRemove: shortestPlayerFromMin, team: teamSharks)
        }
        else if teamDragonAvgHeight == minAvgHeight {
            //Logic is all the same for this one and below - refer to initial if statement comments.
            minAvgTeam = "Dragons"
            shortestPlayerFromMin = getShortestPlayerFromTeamWithSameExperience(team: teamDragons, experience: tallestPlayerIsExperienced)
            teamDragons = removePlayerFromTeam(playerToRemove: shortestPlayerFromMin, team: teamDragons)
        }
        else if teamRaptorAvgHeight == minAvgHeight {
            
            minAvgTeam = "Raptors"
            shortestPlayerFromMin = getShortestPlayerFromTeamWithSameExperience(team: teamRaptors, experience: tallestPlayerIsExperienced)
            teamRaptors = removePlayerFromTeam(playerToRemove: shortestPlayerFromMin, team: teamRaptors)
        }
        
        //Now find the team that had the highest avg height and place the shortest player from the lowest
        if maxAvgTeam == "Sharks" {
            teamSharks.append(shortestPlayerFromMin)
        }
        else if maxAvgTeam == "Dragons"{
            teamDragons.append(shortestPlayerFromMin)
        }
        else if maxAvgTeam == "Raptors"{
            teamRaptors.append(shortestPlayerFromMin)
        }
        //Now find the team that had the lowest avg height and place the tallest player from the highest
        if minAvgTeam == "Sharks"{
            teamSharks.append(tallestPlayerFromMax)
        }
        else if minAvgTeam == "Dragons" {
            teamDragons.append(tallestPlayerFromMax)
        }
        else if minAvgTeam == "Raptors" {
            teamRaptors.append(tallestPlayerFromMax)
        }
        //Check to see if this has resolved the height balancing issue
        if teamsWithinHeightMargin() {
            //Great! Let's get on with printing those letters...
            print("Teams are now within the height margin")
        }
        else if !teamsWithinHeightMargin() {
            //Nuts - let's loop round again and sort this out.
            print("Teams still aren't within the height margin, retrying")
            balanceTeamsByHeight()
        }
        
        
    }
    
}

// Create function to find and return the tallest player from a team

func getTallestPlayerFromTeam(team: [[String: Any]]) -> [String: Any]{
    //Initialise variables for tallestHeight (This will be updated as we loop through the team and find taller players).
    var tallestHeightSoFar = 0.0
    var tallestPlayerInTeam: [String: Any] = [:]
    
    //Loop through the players in the team, work out if they're taller than the current tallest - if they are, assign them to the initialised variables above
    for player in team{
        
        let playerHeight = player["Height"]as! Double
        
        if playerHeight > tallestHeightSoFar {
            
            tallestPlayerInTeam = player
            tallestHeightSoFar = playerHeight
            
        }
        
    }
    //return the tallest player in the team
    return tallestPlayerInTeam
    
}

// Create function to find and return the shortest player on the team, with the required experience / inexperience.

func getShortestPlayerFromTeamWithSameExperience(team: [[String: Any]], experience: Bool) -> [String: Any]{
    //Initialise bare variables, same as the function above.
    var shortestHeightSoFar = 0.0
    var shortestPlayerInTeam: [String: Any] = [:]
    
    //Loop through all the players in the same
    for player in team{
        
        let playerHeight = player["Height"]as! Double
        let playerExperience = player["Soccer Experience"]as! Bool
        
        //if this is the first loop, it will also assign the height for the first player analysed - also wants matching experience to assign player to variable
        if (playerHeight < shortestHeightSoFar || shortestHeightSoFar == 0.0) && playerExperience == experience {

            shortestPlayerInTeam = player
            shortestHeightSoFar = playerHeight
            
        }
        
    }
    //return shortest player with required experience / inexperience
    return shortestPlayerInTeam
    
}

//Create function to remove a player from a team, so that it's easier to swap players to meet a height margin requirement.

func removePlayerFromTeam(playerToRemove: [String: Any], team: [[String: Any]]) -> [[String: Any]]{
    
    //create a copy of the team to return, initialise variable. This time adding an index so that we know the index of the player we need to remove. Also initialising the name of the player to remove for search criteria.
    var teamWithoutPlayer = team
    var loopIndex = 0
    let playerToRemovesName = playerToRemove["Name"]as! String
    
    //Loop through players in the team
    for player in teamWithoutPlayer {
        let playersName = player["Name"]as! String
        //If players name matches, remove player from team
        if playersName == playerToRemovesName {
            teamWithoutPlayer.remove(at: loopIndex)
        }
        
        loopIndex += 1
    }
    //return team that has had the required player removed
    return teamWithoutPlayer
    
}

// Balance the teams by height, call the function
balanceTeamsByHeight()

//As requested for the exceeding expectation mark, the print out of the teams' average heights.
print(teamsAverageHeight(team: teamSharks), teamsAverageHeight(team: teamDragons), teamsAverageHeight(team: teamRaptors))


//----Printing forms to Guardians----\\









