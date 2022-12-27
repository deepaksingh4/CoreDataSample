//
//  Coordinator.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/26/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] {get set}
    init(navigationController: UINavigationController)
    func start()
}
