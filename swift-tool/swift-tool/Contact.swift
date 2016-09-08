// Copyright (C) 2015 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this example's licensing information.
//
import Foundation


enum ContactType: String
{
    case Family = "Family"
    case Friend = "Friend"
    case Colleague = "Colleague"
}

class Contact: Person
{
    var type: ContactType?
    
    override var debugDescription: String {
        return super.debugDescription + "\ntype: " + (type?.rawValue ?? "nil") + "\n"
    }

    init(
        _ firstName: String? = nil,
        _ lastName: String? = nil,
        _ age: Int? = nil,
        _ type: ContactType? = nil)
    {
        self.type = type
        super.init(firstName: firstName, lastName: lastName, age: age)
    }
}