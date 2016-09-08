import Foundation

let text = "Hello World!"

text.isEmpty         // prints false

text.lowercaseString     // prints "hello world!"
text.uppercaseString
text.hasPrefix("Hello")
text.hasSuffix("World")

let fruits = [ "Apple", "Pear", "Banana"]
let separator = ", "
let fruitString = fruits.joinWithSeparator(separator)
print(fruitString) // prints "Apple, Pear, Banana"

let words = fruitString.characters.split { ", ".characters.contains($0) }.map { String($0) }

print(words) // prints "[Apple, Pear, Banana]"

func isSeparator(character: Character) -> Bool {
    return ", ".characters.contains(character)
}
let elements = fruitString.characters.split(isSeparator: isSeparator)
let substrings = elements.map { String($0) }
print(elements[0])
print(substrings)

for currChar in text.characters {
    print(currChar)
}
// prints each character in the string, one per line

let firstChar = text[text.startIndex]
let secondChar = text[text.startIndex.successor()]
let thirdChar = text[text.startIndex.advancedBy(2)]

let startIndex = text.startIndex.advancedBy(6)
text[startIndex] // returns "W"

let endIndex = text.endIndex.advancedBy(-1)
text[endIndex]  // returns "!"

let range1 = Range(start: startIndex, end: endIndex)
text[range1] // returns "World"

let range2 = startIndex ..< endIndex
text[range2] // returns "World"

let range3 = startIndex ... endIndex
text[range3] // returns "World!"


// Global Functions

text.characters.count          //prints 12
let hasH = text.characters.contains("H")  // NOTE: second arg is character, not string
print(hasH)          // prints true
let hasVowels = text.characters.contains({ "aeiou".characters.contains($0) })
print (hasVowels)    // prints true
let location = text.characters.indexOf("W")  // NOTE: second arg is character, not string
print(location)      // prints "Optional(6)"

// Bridged to NSString

"hello world!".capitalizedString


// NSString

let foundationStr: NSString = text
foundationStr.length                  // 12
foundationStr.substringFromIndex(6)   // "World!"
foundationStr.substringToIndex(5)     // "Hello"

let range = foundationStr.rangeOfString("World") // (6, 5)
foundationStr.substringWithRange(range)          // "World"

let fruitText: NSString = fruitString
let fruits2 = fruitText.componentsSeparatedByString(", ")
do {
    // ["Apple", "Pear", "Banana"]

    try fruitText.writeToFile("fruit.txt", atomically: true,
        encoding: NSUTF8StringEncoding)
} catch _ {
}
let clonedFruitText = try? NSString(contentsOfFile: "fruit.txt", encoding: NSUTF8StringEncoding)
// "Apple, Pear, Banana"

// Foundation + Emoji = 🐛

let emojiText = "Hello World! 😊🌍"
emojiText.characters.count            // returns 15

let foundationEmojiText: NSString = emojiText
foundationEmojiText.length  // returns 17


// Formatting

let foo: NSString = "Foo"
let s1 = String(format: "foo's length is %d", foo.length)
// prints "foo's length is 3"

let fahrenheit = 78.5
let s2 = String(format: "temperature is %.1f°F", fahrenheit)
// prints "temperature is 78.5°F"


