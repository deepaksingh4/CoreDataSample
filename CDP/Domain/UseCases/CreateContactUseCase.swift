//
//  CreateContactUseCase.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/25/22.
//

import Foundation

struct CreateContactUseCase: CreateContactUseCaseProtocol {
    func createContact(contact: ContactModel) {
        self.contactRepository.saveContact(contact: contact)
    }
    
    private var contactRepository: ContactDataRepository
    init(contactRepository: ContactRepositoryProtocol = ContactDataRepository()) {
        self.contactRepository = contactRepository as! ContactDataRepository
    }
}
