//
//  ContactListingViewModel.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/27/22.
//

import Foundation
import RxSwift
import RxCocoa

struct ContactListingViewModel{
   static let sampleContacts = [ContactModel(phoneNumber: "123456789", email: "deepak@gmail.com", name: "Deepak")]
    var contacts: BehaviorSubject<[ContactModel]> = BehaviorSubject(value: ContactListingViewModel.sampleContacts)
    
}
