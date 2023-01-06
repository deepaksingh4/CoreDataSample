//
//  ContactCoordinator.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/27/22.
//

import Foundation
import UIKit
import RxCocoa
protocol ContactCoordinatorProtocol: Coordinator{
    func addContact()
    func removeContact()
    func logoutUser()
}


class ContactCoordinator: ContactCoordinatorProtocol {
    
    func addContact() {
        let createContact = CreateContactViewController.instantiate()
        self.navigationController.pushViewController(createContact, animated: true)
    }
    
    func removeContact() {
        //show alert controller
    }
    
    func logoutUser() {
        //go back
    }
    
    var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let contactListingViewController = ConactListingTableViewController.instantiate()
        let viewModel = ContactListingViewModel()
        contactListingViewController.viewModel = viewModel
        self.navigationController.pushViewController(contactListingViewController, animated: true)
    }
    
    
}
