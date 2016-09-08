import Foundation

struct Grocery {
    let name: String
    let price: Double
    let quantity: Int
}

let groceries = [
    Grocery(name: "Apples", price: 0.65, quantity: 12),
    Grocery(name: "Milk", price: 1.25, quantity: 2),
    Grocery(name: "Crackers", price: 2.35, quantity: 3),
]


// --- Map ---

let costs = groceries.map {
    ($0.name, $0.price * Double($0.quantity))
}
print(costs)
// prints "[(Apples, 7.8), (Milk, 2.5), (Crackers, 7.05)]"



// --- Reduce ---

let total = groceries.reduce(0.0) { sum, item in
    sum + (item.price * Double(item.quantity))
}
print(total)
// prints "17.35"


let total2 = groceries.reduce(0.0) {
    $0 + ($1.price * Double($1.quantity))
}
print(total2)

let string = costs.reduce("") { text, item in
    text + "name: \(item.0), cost: \(item.1)\n"
}

print(string)
// prints "name: Apples, cost: 7.8
//         name: Milk, cost: 2.5
//         name: Crackers, cost: 7.05"

let text = costs.reduce("Costs\n==============\n") {
    $0 + String(format: "%8s%6.2f\n",
        NSString(string: $1.0).UTF8String, $1.1)
}
print(text)

// Binds tuple values to names.
//
//let costs: [(name: String, cost: Double)] = groceries.map {
//    return ($0.name, $0.price * Double($0.quantity))
//}

