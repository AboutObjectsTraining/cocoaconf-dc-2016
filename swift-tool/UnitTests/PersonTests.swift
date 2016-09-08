import Cocoa
import XCTest

class UnitTests: XCTestCase
{
    func testCreatePersonWithAllArgs()
    {
        let person = Person(firstName: "Fred", lastName: nil, age: 29)
        print(person)
        
        if let name = person.firstName {
            print(name)
        }
        
        if let name = person.lastName {
            print(name)
        }
    }
    
    func testCreatePersonWithSomeArgs()
    {
        let person = Person(lastName: "SomeArgs", age: 44)
        print(person)
    }
    
    func testCreatePersonWithTuple()
    {
        let tuple1 = ("First", "Last", 22)
        let person1 = Person(tuple1)
        print(person1)
        
//        let tuple2 = ("Fred", 3.3)
        
        let person2 = Person(("Fred", "Smith", 28))
        print(person2)
    }
    
    func testCreatePeopleWithTuples()
    {
        let people = [
            Person(("Fred", "Smith", 27)),
            Person(("Janet", "Wade", 31)),
            Person(("Gale", "Dee", 42))
        ]
        
        print(people)
    }
    
    func testOptionalChaining()
    {
        let person: Person? = Person(firstName: "Fred", lastName: nil, age: 29)
        person!.dog = Dog(name: "Rover", toys: ["Ball", "Frisbee"])
        
        print(person?.firstName)
        
        // prints "Optional("Fred")
        
        
        print(person?.dog?.toys)
        
        // prints "Optional(["Ball, "Frisbee"])
    }
}
