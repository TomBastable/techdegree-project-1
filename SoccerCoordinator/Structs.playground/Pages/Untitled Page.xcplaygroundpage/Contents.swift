let x1 = 0
let y1 = 0

let coordinate1: (x:Int, y:Int) = (0,0)

coordinate1.x

struct Point {
    
    let x: Int
    let y: Int
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
    
    ///Returns the surrounding points in range of
    ///the current one
    func points(inRange range: Int = 1) -> [Point] {
        
        var results: [Point] = []
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoorindate in lowerBoundOfYRange...upperBoundOfYRange{
                let coordinatePoint = Point(x: xCoordinate, y: yCoorindate)
                results.append(coordinatePoint)
            }
        }
        
        return results
        
    }
}

let coordinatePoint = Point(x: 0, y: 0)

coordinatePoint.points()

class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        
        self.position = Point(x: x, y: y)
        
    }
    
    func decreaseLife(by factor: Int) {
        life -= factor
    }
    
}


class SuperEnemy: Enemy {
    
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
    
}


class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("Gotcha")
        }
        else{
            print("Noo")
        }
    }
    
    func isInRange (of enemy: Enemy) -> Bool{
        
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                //if one statement is true, func will break and return value
                return true
            }
        }
        return false
    }
}

class LaserTower: Tower {
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    
    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        
        print("Enemy Destroyed")
        
    }
    
}

let tower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)
let superEnemy = SuperEnemy(x: 1, y: 1)
let laserTower = LaserTower(x: 2, y: 2)

tower.fire(at: superEnemy)
laserTower.fire(at: superEnemy)




















// Practice code

/*struct Person {
    let firstName: String
    let lastName: String
    
    func fullName() -> String {
        
        var result: String = ""
        
        result = "\(firstName) \(lastName)"
        
        return result
    }
}


let aPerson = Person(firstName: "Butt", lastName: "Hole")

let myFullName = aPerson.fullName()*/

struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    
    init(red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = 86.0
        self.green = 191.0
        self.blue = 131.0
        self.alpha = 1.0
        
        description = "red: \(red), green: \(self.green), blue: \(self.blue), alpha: \(self.alpha)"
    }
    
}

let rgb = RGBColor(red: 0, green: 0, blue: 0, alpha: 0)


//
struct User {
    let name: String
    let email: String
    
}

let user = User(name: "Tommo", email: "tom@bedhair.co.uk")

user.email

///Hello
class Vehicle {
    var numberOfDoors: Int
    var numberOfWheels: Int
    
    init(withDoors doors: Int, andWheels wheels: Int) {
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

class Car: Vehicle {
    var numberOfSeats: Int = 4
    override init(withDoors doors: Int, andWheels wheels: Int) {
        super.init(withDoors: doors, andWheels: wheels)
    }
}

let someCar = Car(withDoors: 1, andWheels: 1)


///Code Challenge Final
class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

class Doctor: Person {
    override func fullName() -> String {
        return "Dr. \(lastName)"
    }
}

let someDoctor = Doctor(firstName: "Sam", lastName: "Bastable")

someDoctor.fullName()



