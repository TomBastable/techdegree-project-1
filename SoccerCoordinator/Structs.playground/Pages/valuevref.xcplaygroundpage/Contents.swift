struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "", email: "", age: 28)
var anotherUser = someUser

someUser.email = "e"

class Person {
    
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
    
}

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: String) {
        print("Do nothing! I am a machine!")
    }
}

class Robot: Machine {
    
    override func move(_ direction: String) {
        if direction == "Up" {
            self.location.y += 1
        }
        else if direction == "Down"{
            self.location.y -= 1
        }
        else if direction == "Left"{
            self.location.x -= 1
        }
        else if direction == "Right"{
            self.location.x += 1
        }
    }
    
}
