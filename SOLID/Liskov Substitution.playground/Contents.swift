/*
 Liskov Substitution Principle.
 If S is a subtype of T, then objects of type T may be replaced with objects of type S
 (i.e. an object of type T may be substituted with any object of a subtype S) without
 altering any of the desirable properties of T
 **/
import UIKit

protocol CanFly {
    var flySpeed: Double {get set}
}

protocol CanSwim {
    var swimSpeed: Double {get set}
}

class Bird {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Eagle: Bird, CanFly {
    var flySpeed: Double
    init(name: String, flySpeed: Double) {
        self.flySpeed = flySpeed
        super.init(name: name)
    }
}

class Penguin: Bird, CanSwim {
    var swimSpeed: Double
    init(name: String, swimSpeed: Double) {
        self.swimSpeed = swimSpeed
        super.init(name: name)
    }
}



