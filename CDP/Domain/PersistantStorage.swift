//
//  PersistantStorage.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/23/22.
//

import Foundation
import CoreData

final class PersistantStorage {
    
    private init(){}
    
    static let shared = PersistantStorage()
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CDP")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                debugPrint(error)
            }
        })
        return container
    }()
    
    lazy var context = NSManagedObjectContext(concurrencyType: .privateQueueConcurrencyType)
    func saveContext () {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                debugPrint(nserror)
            }
        }
    }
    
}
