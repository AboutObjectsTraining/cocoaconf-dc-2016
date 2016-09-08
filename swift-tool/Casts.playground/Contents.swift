import Foundation

var things: [Any?] = [42, "Hello", 3.5]

if let answerAsOptional: Int? = things[0] as? Int {
    
    print(answerAsOptional)
}


// things[0] = nil

if things[0] != nil && things[0] is Int {
    
    let answerAsUnwrappedOptional: Int = things[0] as! Int
    
    print(answerAsUnwrappedOptional)
}




let words: [Any] = ["Hello", "World"]

let word: String = words[0] as! String

// prints "Hello"


var objects: [Any] = [42, "Fred", 3.5]

for object in objects {
    
    
    
    if object is Int {
        print("The answer is \(object)")
    }
    
    if object is String {
        print("Hi \(object), how are you?")
    }
}


for object in objects {
    
    switch (object) {
        
    case let value as Int:
        print("The answer is \(value / 6)")
    case let value as String:
        print("Hi \(value), have a nice day!")
    case let value as Double:
        print("It's \(value)°F? Brr, that's cold.")
    default:
        print("The object is \(object)")
    }
}



let names: [AnyObject] = ["Fred", "Pat"]
let name: NSString = names[0] as! NSString

// let name = names[0] as String


for currName in names as! [NSString] {
    print(currName)
}
