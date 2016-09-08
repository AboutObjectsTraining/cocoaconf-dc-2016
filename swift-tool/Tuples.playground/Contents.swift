import UIKit


// Tuples

let vals = (12, "Hi")
print(vals.0)
print(vals.1)

let explicitlyTypedVals: (Int, String) = (12, "Hi")

let vals2 = (x: 12, y: "Hi")
print(vals2.x)
print(vals2.y)

func area(size: (width: Int, height: Int)) -> Int
{
    return size.width * size.height
}

func discount1(originalPrice: Double, percentage: Double) -> (Double, Double)
{
    let amount = originalPrice * percentage
    let price = originalPrice - amount
    
    return (price, amount)
}

let newPrice1: (Double, Double) = discount1(25.00, percentage: 0.15)


func discount2(originalPrice: Double, percentage: Double)
    -> (price: Double, discount: Double)
{
    let amount = originalPrice * percentage
    let price = originalPrice - amount
    
    return (price, amount)
}

let newPrice2: (Double, Double) = discount2(19.95, percentage: 0.15)
discount2(19.95, percentage: 0.15).price
discount2(19.95, percentage: 0.15).discount

let newPrice3: (Double, Double) = discount2(19.95, percentage: 0.15)

let (price, discount) = discount2(19.95, percentage: 0.15)
print(price)
print(discount)

let (discountedPrice, _) = discount2(19.95, percentage: 0.15)
print(discountedPrice)

extension Double
{
    var currencyString: String {
        return String(format: "%.2f", self)
    }
}

price.currencyString

let names = [ "Jane", "Bill", "Jan", "Pat" ]

for (index, value) in names.enumerate()
{
    print("name \(index + 1) is \(value)")
}


// Empty Tuple and Void

func sayHello(_: Void) -> Void
{
    print("Hello")
}

func say2(_: ()) -> ()
{
    print("Hello")
}

func say3()
{
    print("Hello")
}


// Switch Statement Pattern Matching

func matchMyTuple(myTuple: (Int?, Int, Int?))
{
    switch myTuple
    {
    case (.Some, 99, .None):
        print ("Matched first case: \(myTuple)")
    case (.Some, _, .None):
        print ("Matched second case: \(myTuple)")
    case (.Some, _, .Some):
        print ("Matched third case: \(myTuple)")
    case (.None, _, .Some):
        print ("Matched fourth case: \(myTuple)")
    case (.None, _, .None):
        print ("Matched fifth case: \(myTuple)")
    }
}

matchMyTuple((Int("1"), 99, nil))
matchMyTuple((Int("1"), 42, nil))
matchMyTuple((Int("1"), 42, Int("2")))
matchMyTuple((nil, 42, nil))
matchMyTuple((nil, 42, Int("2")))


//let x: Int? = 42
//let y = 99
//let z: Int? = nil
//
//var myTuple = (x: x, y: y, z: z)
//matchMyTuple(myTuple)
//
//myTuple.x = nil
//matchMyTuple(myTuple)
//
//myTuple.x = 42
//myTuple.y = 100
//matchMyTuple(myTuple)
//
//myTuple.z = 1
//matchMyTuple(myTuple)
