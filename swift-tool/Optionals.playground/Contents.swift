//: Playground - noun: a place where people can play

import Cocoa

var name: String?
// declares name to be an optional string

if name == nil {
    print("name is nil")
}
// prints "name is nil"

name = "Fred"

print(name)

var name2 = Optional("Fred2")
print(name2)


name2 = Optional()
print(name2)

if name != nil {
    print("name is \(name)")
    // prints "name is Optional("Fred")"
    
    print("name is " + name!)
    // prints "name is Fred"
}

if let someName = name {
    print("name is " + someName)
}
// prints "name is Fred"

let foo: String? = nil
if let someName = foo {
    print("name is \(someName)")
}
else {
    print("name is nil")
}
// doesn't enter if block

let lastName: String! = "Smith"
print("name is \(lastName)")

// prints "name is Fred"

let Unknown = "Unknown"
let firstName: String? = nil

var description: String {
    return "first: \(firstName ?? Unknown), "
        +  "last: \(lastName ?? Unknown)"
}

print(description)

// prints "first: Fred, last: Smith"


let special: Double? = nil

let discount = special ?? 0.15

// assigns 0.15 to discount if special is nil, otherwise assigns unwrapped value of special


let disco = special == nil ? 0.15 : special!


func formattedName(name: String?) -> String
{
    guard let someName = name else {
        return "Unknown"
    }
    
    return "Name is \(someName)"
}

formattedName("Fred")
// prints: "Name is Fred"

var optionalString1: Optional<String>
var optionalString2: Optional<String> = "Foo"

optionalString1
// optionalString1! // Boom!

optionalString2
optionalString2!

optionalString1.debugDescription
optionalString1?.debugDescription
// optionalString1!.debugDescription // Boom!

optionalString2.debugDescription
optionalString2?.debugDescription
optionalString2!.debugDescription


optionalString2?.isEmpty
// optionalString2.isEmpty // Compile error; no member function 'isEmpty'

if optionalString1 is Optional<String> {
    print("Yup, it's an Optional.")
} else {
    print("Nope, not an Optional.")
}

var optionalString3: String? = "Bar"



var optionalArray1: [String]? = ["Tomato", "Carrot", "Celery"]
var optionalArray2: [String?]? = ["Apple", nil, "Pear"]

optionalArray1?[0]
optionalArray1?[0].debugDescription

optionalArray2?[0].debugDescription
optionalArray2?[0]?.debugDescription

for vegetable in optionalArray1! {
    print(vegetable)
}

if let vegetables = optionalArray1 {
    for veggie in vegetables {
        print(veggie)
    }
}

if let fruits = optionalArray2 {
    for currFruit in fruits {
        if let fruit = currFruit {
            print(fruit)
        }
    }
}

let optionalArray3: [String?] = ["Rover", nil, "Fido", "Spot"]

let actualDogs = optionalArray3.map { value in
    return value == nil ? "Unknown" : value!
}

actualDogs
