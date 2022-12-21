//
//  User+CoreDataProperties.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/28/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var mobile: Int64
    @NSManaged public var savedPins: NSSet?

}

// MARK: Generated accessors for savedPins
extension User {

    @objc(addSavedPinsObject:)
    @NSManaged public func addToSavedPins(_ value: SavedPins)

    @objc(removeSavedPinsObject:)
    @NSManaged public func removeFromSavedPins(_ value: SavedPins)

    @objc(addSavedPins:)
    @NSManaged public func addToSavedPins(_ values: NSSet)

    @objc(removeSavedPins:)
    @NSManaged public func removeFromSavedPins(_ values: NSSet)

}

extension User : Identifiable {

}
