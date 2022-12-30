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
    var password: BehaviorSubject<String> = BehaviorSubject(value: "")
    var isValidCred: PublishSubject<Bool> = PublishSubject()
    
    func setup(){
        Observable.combineLatest(userName.asObservable(), password.asObservable()).subscribe { [weak self](userName, password) in
            if userName == "Deepak" && password == "pass" {
                self?.isValidCred.onNext(true)
            }else{
                self?.isValidCred.onNext(false)
            }
        }.disposed(by: bag)
    }
    
    func performLogin() -> Single<Bool> {
        return Single<Bool>.create{ observer in
            //call API
            observer(.success(true))
            return Disposables.create {
                
            }
        }
    }
    init(){
        setup()
    }
}
