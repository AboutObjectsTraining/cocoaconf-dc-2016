// Copyright (C) 2015 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this example's licensing information.
//
import Cocoa
import XCTest

class DogTests: XCTestCase
{
    func testDog()
    {
        var rover = Dog(name: "Rover", toys: ["Ball", "Rope", "Frisbee"])
        print(rover)
        print("favorite toy: \(rover.favoriteToy)")

        print(rover.toyNames)
        
        
//        println("name: \(rover.name), toys: \(rover.toys)")
        
        
        var fido = Dog(name: "Fido", toys: [])
        print(fido)
        print("favorite toy: \(fido.favoriteToy)")
        
        fido.toyNames = "Kong, Ball, KittyKat"
        print(fido.toyNames)
        print("favorite toy: \(fido.favoriteToy)")
        print("toys: \(fido.toys)")
    }
    
    func testFancyBark()
    {
        let fido = Dog(name: "Fido", toys: [])
        
        fido.barkWithPrefix("Grrr", suffix: "(pant, pant)", numberOfTimes: 2)
        
        fido.woof(prefix: "Grrr", suffix: "(pant, pant)", repetitions: 2)
        
        fido.bark(prefix: "Grrr", suffix: "(pant, pant)", numberOfTimes: 2)
    }
}


