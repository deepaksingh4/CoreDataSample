//
//  ContactDataRepository.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/25/22.
//

import Foundation

struct ContactDataRepository: ContactRepositoryProtocol {
    func getAllContacts() -> [ContactModel]? {
        return nil
    }
    
    func saveContact(contact: ContactModel) {
        let cdPinModel = Contacts(context: PersistantStorage.shared.context)
        //contact details
        PersistantStorage.shared.saveContext()
    }
    
    func deleteContact(contact: ContactModel) {
        
    }
    
    func updateContact(contact: ContactModel) {
        
    }
}
