import Foundation

// --- Map ---

let things = Array(arrayLiteral: ["apple", "pear", "banana"])

let fruits = ["apple", "pear", "banana"]
let capitalizedFruits = fruits.map { $0.capitalizedString }
print(capitalizedFruits)
// prints "[Apple, Pear, Banana]"

let veggies = ["onion", "carrot", "celery"]
let foodGroups = [fruits, veggies]
let foods = foodGroups.flatMap { $0.map { $0.capitalizedString } }
print(foods)
// prints "[Apple, Pear, Banana, Onion, Carrot, Celery]"

let sortedFoods = foods.sort { $0 < $1 }
print(sortedFoods)
// prints "[Apple, Banana, Carrot, Celery, Onion, Pear]"


// --- Reduce ---

var ints = [Int]()
ints.appendContentsOf(1...5)

let sum = ints.reduce(0) { currSum, currVal in
    return currSum + currVal
}
print(sum)
// prints 15

let sum2 = ints.reduce(0) { $0 + $1 }
print(sum2)

let sum3 = ints.reduce(0, combine: +)

let factorial = ints.reduce(1) { currTotal, currVal in
    return currTotal * currVal
}

let fact = ints.reduce(1, combine: *)
//prints 120

let string = fruits.reduce("favorites: ") { text, fruit in
    return "\(text)\(fruit), "
}
print(string)
// prints "favorites: apple, pear, banana, "

let fruitsText = fruits.reduce("favorites: ") { "\($0)\($1), " }
print(fruitsText)
// prints "favorites: apple, pear, banana, "




let fruitsText2 = fruits.reduce("favorites: ") { $0 + $1 + ", " }
print(fruitsText2)
// prints "favorites: apple, pear, banana, "















