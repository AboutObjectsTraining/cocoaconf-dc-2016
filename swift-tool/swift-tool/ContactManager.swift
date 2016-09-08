import Foundation

class ContactManager
{
    var contacts = [Contact]()
    
    func contactsOfType(type: ContactType) -> [Contact]
    {
        return contacts.filter { $0.type == type }
    }
    
    // Curried function. Returns a function that returns an array of
    // contacts filtered by contact type.
    //
    func filterContacts(type: ContactType) () -> [Contact]
    {
        return contactsOfType(type)
    }
}

extension ContactManager
{
    subscript(index: Int) -> Contact
    {
        return contacts[index]
    }
}