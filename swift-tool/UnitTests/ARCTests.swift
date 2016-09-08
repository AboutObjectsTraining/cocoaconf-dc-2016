// Copyright (C) 2015 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this example's licensing information.
//
import XCTest

class Human
{
    // TODO: Simplify
    var cats: [Cat] = []
    func addCat(cat: Cat) {
        cats.append(cat)
        cat.owner = self
    }
    func addCatWeakly(cat: Cat) {
        cats.append(cat)
        cat.weakOwner = self
    }
    deinit {
        print("Deinitializing Human")
    }
}

class Cat
{
    var name: String!
    class func catWithName(name: String) -> Cat {
        let newCat = Cat(name: name)
        return newCat
    }
    
    init(name: String) {
        self.name = name
    }
    
    var owner: Human!
    weak var weakOwner: Human!
    deinit {
        print("Deinitializing \(name)")
    }
}

func createCatAndOwner()
{
    autoreleasepool {
        let owner = Human()
        owner.addCat(Cat(name: "Kitty"))
        print("Created \(owner) with \(owner.cats)")
    }
}


class ARCTests: XCTestCase
{
    func testDeinit()
    {
//        let human = Human()
//        let cat = Cat(name: "Kitty")
    }
    
    func testRetainCycle()
    {
        let human = Human()
        let cat = Cat(name: "Kitty")
        human.addCat(cat)
    }
    
    func testWeakReference()
    {
        let human = Human()
        let cat = Cat(name: "Kitty")
        human.addCatWeakly(cat)
    }
    
    func testLoop()
    {
//        var human: Human
        var cat: Cat
        
        for i in 1...3 {
            print("Entered loop...")
            cat = Cat.catWithName("Kitty \(i)")
            print("Created cat named \(cat.name)")
        }
        
        print("Loop ended")
    }
    
//    func testAutoreleasePool()
//    {
//        autoreleasepool {
//            
//            for i in 0..<10 {
//                // Do something potentially expensive
//            }
//        }
//    }
}
