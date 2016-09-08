
for var index = 0; index < 3; index++
{
    print("index is \(index)")
}
// prints the following:
//
// "index is 0"
// "index is 1"
// "index is 2"

for index in 0...2
{
    print("index is \(index)")
}


let names = [ "Jane", "Bill", "Pat" ]

for name in names
{
    print("name is \(name)")
}

for (index, name) in names.enumerate()
{
    print("index is \(index), name is \(name)")
}


var whoLetTheDogsOut = "Who!"

for _ in 1...4
{
    whoLetTheDogsOut += " Who!"
}

whoLetTheDogsOut
