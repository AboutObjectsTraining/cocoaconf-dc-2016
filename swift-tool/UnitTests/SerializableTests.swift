import Cocoa
import XCTest

class SerializableTests: XCTestCase
{
    var person = Person(("Gale", "Dee", 42))
    
    override func setUp() {
        super.setUp()
        person = Person(("Gale", "Dee", 42))
    }
    
    func testSerialize()
    {
        let mirror = Mirror(reflecting: person)
        
        for child in mirror.children {
            print("key: \(child.label!), value: \(child.value)")
        }
    }
    
//    func testSerializePerson()
//    {
//        let dict = person.dictionaryRepresentation()
//        print(dict)
//    }
//    
//    func testValueForKey()
//    {
//        print(person.value("firstName"))
//        print(person.value("lastName"))
//        print(person.value("age"))
//    }
}
