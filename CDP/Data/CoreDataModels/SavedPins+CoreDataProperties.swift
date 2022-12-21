//
//  SavedPins+CoreDataProperties.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/28/22.
//
//

import Foundation
import CoreData


extension SavedPins {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SavedPins> {
        return NSFetchRequest<SavedPins>(entityName: "SavedPins")
    }

    @NSManaged public var pin: Int16
    @NSManaged public var pinName: String?
    @NSManaged public var user: User?

}

extension SavedPins : Identifiable {

}
