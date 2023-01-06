//
//  MainCoordinator.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/26/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator]  = []
    
    private let navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginVC: LoginViewController = LoginViewController.instantiate()
        loginVC.coordinator = self
        self.navigationController.pushViewController(loginVC, animated: false)
    }
    
    func loginSuccessfull(){
        let contactCoordinator = ContactCoordinator(navigationController: self.navigationController)
        contactCoordinator.start()
        self.childCoordinators.append(contactCoordinator)
    }
    
    
}
