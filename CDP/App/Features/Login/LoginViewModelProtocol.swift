//
//  LoginViewModelProtocol.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/22/22.
//

import Foundation
import RxSwift
protocol LoginViewModelProtocol {
    var userName: BehaviorSubject<String> {get set}
    var password: BehaviorSubject<String> {get set}
    var isValidCred: PublishSubject<Bool> {get set}
    
    func performLogin() -> Single<Bool> 
}
