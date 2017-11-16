//: Playground - noun: a place where people can play
/*
 Open Closed Principle states software entities (classes, modules, functions, etc.)
 should be open for extension, but closed for modification.
 **/
import UIKit

protocol CanWriteCode {
    func programming() -> String
}

class IosDeveloperCool: CanWriteCode {
    func programming() -> String {
        return "Swift"
    }
}

class IosDeveloper: CanWriteCode {
    func programming() -> String {
        return "Objective-C"
    }
}

class WebDeveloper: CanWriteCode {
    func programming() -> String {
        return "Ruby"
    }
}

class Team {
    let team: [CanWriteCode]
    
    init(team: [CanWriteCode]) {
        self.team = team
    }
    
    func programming() -> [String] {
        return team.map { $0.programming() }
    }
}

let ios1 = IosDeveloperCool()
let ios2 = IosDeveloper()
let ios3 = IosDeveloperCool()
let web1 = WebDeveloper()

let team = Team(team: [ios1, ios2, ios3, web1])
team.programming()
