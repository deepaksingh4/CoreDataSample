//
//  ViewModel.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/25/22.
//

import Foundation
import RxSwift
import RxCocoa


struct CreateContactViewModel: CreateContactVMProtocol {
    
    var userName = BehaviorRelay<String?>(value: nil)
    var pinValue = BehaviorRelay<String?>(value: nil)
    var pinName = BehaviorRelay<String?>(value: nil)
    var phone = BehaviorRelay<String?>(value: nil)
    
    
    var isValidPin = false
    lazy var validatePhone: Observable<Bool> = self.phone.map{ value in
        Validator.isValidPhoneNumber(input: value)
    }.share(replay:1)
    
    lazy var validatePin: Observable<Bool> = self.pinValue.map { pin in
        return Validator.isValidPin(input: pin)
    }.share(replay:1)
    
    lazy var isFormValid: Observable<Bool> = Observable.combineLatest(self.validatePin, self.validatePhone){$0 && $1}
    
}

extension CreateContactViewModel {
    
    func savePin(with disposeBag: DisposeBag){
        
    }
    
    func save(){
        
    }
}
 
