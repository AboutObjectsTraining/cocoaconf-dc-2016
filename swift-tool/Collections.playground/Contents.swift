import UIKit

let empty = []


let words = ["one", "two", "three"]
words[0]

var phrases = ["hey there", "what's up?"]
phrases.insert("dudes", atIndex: 1)

let reversedWords = words.reverse()
let capitalizedWords = words.map { $0.capitalizedString }

var mutableWords = words
mutableWords.extend(reversedWords)

let wordsAndPhrases = [words, phrases]


let foo = wordsAndPhrases.flatMap { $0.map { $0.capitalizedString } }
foo


if let bar = words as? [String] where bar.count == 3 {
        print("\(bar)")
}


let stringObjs: [NSString] = [ "I'm an object.", "Me too!", "Me three!" ]

if let strings = stringObjs as? [String] where stringObjs.count > 0 {
    let reflection = reflect(strings)
    print("\(reflection.valueType)")
    print("\(reflection.summary)")
    print("\(strings)")
    
    for i in 0..<reflection.count {
        let (name, child) = reflection[i]
        print("name: \(name), value: \(child.value), type: \(child.valueType)")
    }
}

let things = ["one", "two", 2, 3.0, 4, 5.0, ["Foobar"]]

for thing in things {
    switch thing {
    case (let x as Double):
        print("Double value: \(x)")
    case (let s as String):
        print("String value: \(s)")
    default:
        print("Unexpected type for value: \(thing)")
    }
}

if "foo" > "bar" {
    print("foo is greater")
}


