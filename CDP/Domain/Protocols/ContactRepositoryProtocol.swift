//
//  ContactRepositoryProtocol.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/28/22.
//

import Foundation

protocol ContactRepositoryProtocol {
    
    func saveContact(contact: ContactModel)
    func getAllContacts() -> [ContactModel]?
    func deleteContact(contact: ContactModel)
    func updateContact(contact: ContactModel)
}
