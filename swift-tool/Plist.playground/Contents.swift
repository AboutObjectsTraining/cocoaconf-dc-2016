import Foundation


// Reading and Writing .plist Files

let foundationArray: NSArray = ["Apple", "Pear", "Banana"]

let foundationDict: NSDictionary = [
    "name": "Fred",
    "age": 42,
    "email": [
        "work": "fred@foo.com",
        "home": "fred@me.com"
    ]
]

// Array
foundationArray.writeToFile("fruit.plist", atomically: true)
let clonedArray = NSArray(contentsOfFile: "fruit.plist")

// Dictionary
foundationDict.writeToFile("fred.plist", atomically: true)
let clonedDict = NSDictionary(contentsOfFile: "fred.plist")


// Reading and Writing JSON


let serializedArray = NSJSONSerialization.dataWithJSONObject(foundationArray, options: nil, error: nil)
serializedArray?.writeToFile("fruit.json", options: nil, error: nil)

let fruitData: NSData! = NSData(contentsOfFile: "fruit.json")
let clonedFruit: AnyObject! = NSJSONSerialization.JSONObjectWithData(fruitData, options: nil, error: nil)
