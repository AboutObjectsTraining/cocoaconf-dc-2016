import Foundation

var info = [
    "name": "Fred",
    "email": "fred@foo.com",
    "age": 37
]
print(info)
// prints "[email: fred@foo.com, age: 37, name: Fred]"
print(info["name"])
// prints "Optional(Fred)"

if let name = info["name"] as? String {
    print(name)
}
// prints "Fred"

let phoneKey = "phone"
if let phone = info[phoneKey] as? String {
    print(phone)
} else {
    print("No value for key \(phoneKey)")
}
// prints "No value for key phone"


info[phoneKey] = "703-321-1234"

if let phone = info[phoneKey] as? String {
    print(phone)
} else {
    print("No value for key \(phoneKey)")
}
// prints "703-321-1234"


