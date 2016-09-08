import XCTest

class LabNTests: XCTestCase
{
    
    func testStrings()
    {
        let emojiText = "Hello World! 😊 🌍 "
        print(emojiText.characters.count)
    }

    func testCreateDog()
    {
        let rover = Dog()
        rover.isPet = true;
        rover.name = "Rover"
        rover.barkText = "Bow, wow!"
        
        print(rover.description())
        
        print("Address is \(unsafeAddressOf(rover)) ")
        
        print(rover.numberOfLegs)
    }
}
