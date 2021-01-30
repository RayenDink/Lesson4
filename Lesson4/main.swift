//
//  main.swift
//  Lesson4
//
//  Created by Rayen on 30.01.2021.
//

import Foundation

enum MyCar {
    case foo
}

struct Car {
    let max : Double
    var truck: Double
    
    
    init(max: Double) {
        self.max = max
        self.truck = 0
    }
    
    mutating func load(cargo: Double){
        if (truck + cargo) <= max {
            truck += cargo
            print("remain: \(max - truck) ")
        } else {
            print("too much \(cargo), remained: \(max - truck)")
        }
        
    }
}

var car = Car(max: 100)
car.load(cargo: 50)
car.load(cargo: 60)
