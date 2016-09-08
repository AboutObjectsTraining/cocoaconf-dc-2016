import Foundation

enum Pet {
    case Dog, Cat, Bird, Skunk
}


struct Person: CustomDebugStringConvertible {
    var fullName: String?
    var age: String?
    var debugDescription: String {
        return "name: \(fullName), age: \(age)"
    }
}

func format1(person: Person?) -> String
{
    if let p = person {
        if let name = p.fullName {
            if let ageStr = p.age, let age = Int(ageStr) {
                return "\(name), age: \(age)"
            } else { return name }
        } else { return "missing name" }
    }
    return "person cannot be nil"
}

format1(nil)
format1(Person(fullName: nil, age: nil))
format1(Person(fullName: "Fred Smith", age: nil))
format1(Person(fullName: "Fred Smith", age: "42"))


func format2(person: Person?) -> String
{
    guard let p = person else {
        return "person cannot be nil"
    }
    
    guard let name = p.fullName where name.characters.count > 1 else {
        return "must have name with length > 1"
    }
    
    guard let ageStr = p.age, age = Int(ageStr) where age > 0 else {
        return name
    }
    return "\(name), age: \(age)"
}

func format3(person: Person?, minAge: Int) -> String
{
    guard minAge > -1,
        let p = person, name = p.fullName where name.characters.count > 1,
        let ageStr = p.age, age = Int(ageStr) where age > 0 else {
            return "couldn't format name"
    }
    return "\(name), age: \(age)"
}

format2(nil)
format2(Person(fullName: nil, age: nil))
format2(Person(fullName: "F", age: nil))
format2(Person(fullName: "Fred Smith", age: nil))
format2(Person(fullName: "Fred Smith", age: "0"))
format2(Person(fullName: "Fred Smith", age: "42"))

format3(Person(fullName: "Fred Smith", age: "0"), minAge: 0)



func divide1(numerator: Int, denominator: Int) -> Int?
{
    guard denominator != 0 else {
        print("Zero divide")
        return nil
    }
    
    return numerator / denominator
}

divide1(12, denominator: 4)
divide1(1, denominator: 0)


extension Person {
    var favoritePet: Pet { return Pet.Dog }
}

func showPet(person: Person)
{
    if case .Skunk = person.favoritePet {
        print("Skunks, seriously?")
    }

    guard case .Dog = person.favoritePet else {
        print("But you do like dogs, right?")
        return
    }
    
    print("Dogs, FTW!")
}

showPet(Person())


let fred = Person(fullName: "Fred Smith", age: "42")

if let name: NSString = fred.fullName where name.hasPrefix("Fred") {
    print("Fred's full name is \(name)")
}


enum MathError: ErrorType {
    case ZeroDivide
    case Overflow
}

func divide2(numerator: Int, denominator: Int) throws -> Int?
{
    if denominator == 0 {
        throw MathError.ZeroDivide
    }
    
    return numerator / denominator
}


if let x = try? divide2(12, denominator: 3) {
    print(x)
}

if let x = try divide2(12, denominator: 3) {
    print(x)
}

do {
    let result = try divide2(42, denominator: 0)
    print("result is \(result)")
}
catch MathError.ZeroDivide {
    print("Zero divide")
}

do {
    let result = try divide2(42, denominator: 21)
    print("result is \(result)")
}
catch MathError.ZeroDivide {
    print("Zero divide")
}
