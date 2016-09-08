import Foundation

let empty = []

var myArray: [Int]
// defines a variable of type Array of Int

var anotherArray: Array<Int>


let words = ["one", "two", "three"]
print(words)
// prints "[one, two, three]"
print(words[0])
// prints "one"

let reversedWords = words.reverse() as Array
print(reversedWords)
// prints "[three, two, one]"

var moreWords = words
moreWords.insert("two and a half", atIndex: 2)
print(moreWords)
// prints "[one, two, two and a half, three]"

moreWords[2] = "two and three quarters"
print(moreWords)
// prints "[one, two, two and three quarters, three]"



let fruits = ["apple", "pear", "banana"]
let veggies = ["onion", "carrot", "celery"]
var edibles = veggies
edibles.appendContentsOf(fruits)
print(edibles)
// prints ["onion", "carrot", "celery", "apple", "pear", "banana"]

func ascending(s1: String, s2: String) -> Bool {
    return s1 < s2
}

let e1 = edibles.sort(ascending)
print(e1)

let e2 = edibles.sort({ (s1: String, s2: String) -> Bool in
    return s1 < s2
})

let e3 = edibles.sort {
    $0 < $1
}

edibles.sortInPlace { $0 < $1 }
print(edibles)
// prints "[apple, banana, carrot, celery, onion, pear]"

let sortedEdibles = edibles.sort { $0 > $1 }
print(sortedEdibles)
// prints "[pear, onion, celery, carrot, banana, apple]"

let sortedEdibles2 = edibles.sort(>)
print(sortedEdibles2)




//if let bar = words as? [String] where bar.count == 3 {
//        print("\(bar)")
//}


let stringObjs: [NSString] = [ "I'm an object.", "Me too!", "Me three!" ]

//if let strings = stringObjs as? [String] where stringObjs.count > 0 {
//    let reflection = reflect(strings)
//    print("\(reflection.valueType)")
//    print("\(reflection.summary)")
//    print("\(strings)")
//    
//    for i in 0..<reflection.count {
//        let (name, child) = reflection[i]
//        print("name: \(name), value: \(child.value), type: \(child.valueType)")
//    }
//}

let things = ["one", "two", 2, 3.0, 4, 5.0, ["Foobar"]]

for item in things where item is Double {
    print(item as! Double / 2.0)
}

let numbers = Array(1...5)

for value in numbers where value % 2 != 0 {
    print(value)
}

for thing in things {
    switch thing {
    case let x as Double:
        print("Double value: \(x)")
    case let s as String:
        print("String value: \(s)")
    default:
        print("Unexpected type for value: \(thing)")
    }
}

if "foo" > "bar" {
    print("foo is greater")
}


