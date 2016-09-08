
// Everything's an Object

42.advancedBy(7)

extension Int {
    func printAsAge() {
        print("I'm \(self) years old")
    }
}

42.printAsAge()


// Basic Function Syntax

func add(x: Int, y: Int) -> Int
{
    return x + y
}

add(2, y: 3)


// Overloading
func add(x: Double, y: Double) -> Double
{
    return x + y
}

add(2.0, y: 3.0)

func add(x: Int, y: Int, modulo modulus: Int) -> Int
{
    return (x + y) % modulus
}

add(2, y: 3, modulo: 5)


// Generics

func maxValue<T: Comparable>(x: T, y: T) -> T
{
    return x > y ? x : y
}

maxValue(22.5, y: 23)
maxValue(3, y: 2.9)
maxValue("Apple", y: "Banana")

// Closures

func printResult(x: Int, y: Int, someFunction: ((Int, Int) -> Int))
{
    let result = someFunction(x, y)
    print(result)
}

func multiply(x: Int, y: Int) -> Int
{
    return x * y
}


printResult(2, y: 3, someFunction: multiply)
printResult(2, y: 3, someFunction: add)
printResult(2, y: 3) {
    value1, value2 in
    return value1 - value2
}

