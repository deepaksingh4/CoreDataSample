//
//  Contacts+CoreDataProperties.swift
//  
//
//  Created by Deepak Singh07 on 12/21/22.
//
//

import Foundation
import CoreData


extension Contacts {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contacts> {
        return NSFetchRequest<Contacts>(entityName: "Contacts")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var phoneNumber: Int16
    @NSManaged public var email: String?

}
