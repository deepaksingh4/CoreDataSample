//
//  LoginViewModel.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/22/22.
//

import Foundation

class LoginViewModel: LoginViewModelProtocol {
    
    
    func validateUsername(username: String) -> Bool{
        return username.isValidEmail
    }
}
