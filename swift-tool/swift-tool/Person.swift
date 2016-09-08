import Foundation

class Person: Serializable, CustomStringConvertible, CustomDebugStringConvertible
{
    static var defaultAge: Int = 21
    
    var firstName: String?
    var lastName: String?
    var age: Int?
    
    var dog: Dog?
    
    class func fetchPeople(path: String) -> [Person]
    {
        let people = [Person]()

        // Fetch people somehow...
        
        return people
    }
    
    var fullName: String { get {
        if firstName != nil && lastName != nil { return "\(firstName) \(lastName)" }
        if firstName != nil { return firstName! }
        if lastName  != nil { return lastName! }
        return "Unknown"
        }
    }
    
    var description: String {
        return fullName + ", age: \(age == nil ? "unknown" : age!.description)"
    }

    var debugDescription: String {
        return "\nfirst name: " + firstName.debugDescription
            +  "\nlast name: " + lastName.debugDescription
            +  "\nage: \(age)"
    }
    
    var XXXdebugDescription: String {
        let fName = firstName ?? "nil"
        let lName = lastName ?? "nil"
        let a = age == nil ? "nil" : age!.description
        return "first name: \(fName)\n"
            +  "last name: \(lName)\n"
            +  "age: \(a)\n"
    }
    
    convenience init(firstName: String?, lastName: String?)
    {
        self.init(firstName: firstName, lastName: lastName, age: Person.defaultAge)
    }
    
    init(_ values: (String, String, Int))
    {
        firstName = values.0
        lastName = values.1
        age = values.2
    }
    
    init(dictionary: [String: Any?])
    {
        if let value = dictionary["firstName"] as? String {
            firstName = value
        }
        if let value = dictionary["lastName"] as? String {
            firstName = value
        }
        if let value = dictionary["age"] as? Int {
            age = value
        }
    }
    
    init(firstName: String? = nil, lastName: String? = nil, age: Int? = nil)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}
