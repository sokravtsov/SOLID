/*
 Single Responsobilities principle. Every module or class should have responsibility over
 a single part of the functionality provided by the software, and that responsibility
 should be entirely encapsulated by the class.
 **/
import UIKit

protocol CanBeOn {
    func on()
}

protocol CanBeOff {
    func off()
}

class Switch: CanBeOn, CanBeOff {
    var stateOn = false
    
    func on() {
        stateOn = true
    }
    
    func off() {
        stateOn = false
    }
}

class SwitchOn {
    let switcher: CanBeOn
    
    init(switcher: CanBeOn) {
        self.switcher = switcher
    }
    
    func execute() {
        switcher.on()
    }
}

class SwitcherOff {
    let switcher: CanBeOff
    
    init(switcher: CanBeOff) {
        self.switcher = switcher
    }
    
    func execute() {
        switcher.off()
    }
}

let switcher = Switch()
switcher.stateOn

let switcherOn = SwitchOn(switcher: switcher)
switcherOn.execute()
switcher.stateOn

let switcherOff = SwitcherOff(switcher: switcher)
switcherOff.execute()
switcher.stateOn




