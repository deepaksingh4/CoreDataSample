//
//  LoginViewModel.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/22/22.
//

import Foundation
import RxSwift
class LoginViewModel: LoginViewModelProtocol {
    var bag = DisposeBag()
    
    var userName: BehaviorSubject<String> = BehaviorSubject(value: "")
    
    func validateUsername(username: String) -> Bool{
        return username.isValidEmail
    }
}
