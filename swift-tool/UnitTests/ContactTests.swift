import Cocoa
import XCTest


let Contacts = [
    Contact("Fred", "Smith", 23, .Colleague),
    Contact("Jan", "Wood", 27, .Colleague),
    Contact("Bill", "Jones", 31, .Friend),
    Contact("Bob", "Hill", 42, .Family),
    Contact("Dee", "Smith", 31, .Colleague),
    Contact("Jean", "Hill", 39, .Family),
    Contact("Dick", "Gray", 33, .Friend),
    Contact("Jill", "Ross", 35, .Friend),
]

class ContactTests: XCTestCase
{
    var manager = ContactManager()
    
    override func setUp() {
        super.setUp()
        manager.contacts = Contacts
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testContactsOfType()
    {
        let filteredContacts = manager.contactsOfType(.Friend)
        print(filteredContacts)
    }
    
    func testSubscript()
    {
        let firstContact = manager.contacts[0]
        print(firstContact)
        
        let secondContact = manager.contacts[1]
        print(secondContact)
    }
}

// MARK: - Currying
extension ContactTests
{
    func testInstanceMethodAsCurriedStaticMethod()
    {
        // The expression on the right returns a function that takes an instance
        // of ContactManager as its argument. The function's return value is
        // another function.
        let staticMethod = ContactManager.contactsOfType
        
        // The expression on the right returns a function that wraps the static
        // function returned in the previous step. The returned function takes
        // an instance of ContactType as its argument and returns an array of
        // Contacts.
        let instanceMethod = staticMethod(manager)
        
        // Invoking the function yields the desired array.
        let friends = instanceMethod(.Friend)
        print(friends)
        
        // The three preceding steps can be combined in a single statement.
        let family = ContactManager.contactsOfType(manager)(.Family)
        print(family)
        
        // It's obviously simpler to write it this way, though.
        let colleagues = manager.contactsOfType(.Colleague)
        print(colleagues)
    }
    
    func testSimpleCurrying()
    {
        let filterFriends = manager.filterContacts(.Friend)
        let filterFamily = manager.filterContacts(.Family)
        
        let friends = filterFriends()
        print(friends)
        
        let family = filterFamily()
        print(family)
    }
}
