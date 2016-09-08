import Foundation

class Human
{
    var cats: [Cat] = []
    func addCat(cat: Cat) {
        cats.append(cat)
        cat.owner = self
    }
    deinit {
        print("Deinitializing \(self)")
    }
}

class Cat
{
    var owner: Human!
    deinit {
        print("Deinitializing \(self)")
    }
}

func createCatAndOwner()
{
    autoreleasepool {
        let owner = Human()
        owner.addCat(Cat())
        print("Created \(owner) with \(owner.cats)")
    }
}


createCatAndOwner()
