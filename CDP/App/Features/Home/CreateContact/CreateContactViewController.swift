//
//  ViewController.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/23/22.
//

import UIKit
import RxCocoa
import RxSwift

class CreateContactViewController: UIViewController, Storyboarded {
    
    var vm = CreateContactViewModel()
    let disposedBag = DisposeBag()
    
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var pinKey: UITextField!
    @IBOutlet weak var pin: UITextField!
    
    @IBOutlet weak var cardBackground: UIView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        bindForm()
        bindButtons()
        setUpUI()
    }
    
    func setUpUI(){
        cardBackground.layer.cornerRadius = 10
        cardBackground.layer.shadowColor = UIColor.gray.cgColor
        cardBackground.layer.shadowOffset = CGSize(width: 2, height: 3)
        cardBackground.layer.shadowRadius = 3
    }
    
    
    func bindForm(){
        name
            .rx
            .text
            .orEmpty
            .bind(to: vm.userName)
            .disposed(by: disposedBag)
        
        phone
            .rx
            .text
            .orEmpty
            .bind(to: vm.phone)
            .disposed(by: disposedBag)
        
        pin
            .rx
            .text
            .orEmpty
            .bind(to: vm.pinValue)
            .disposed(by: disposedBag)
        
        pinKey
            .rx
            .text
            .orEmpty
            .bind(to: vm.pinName)
            .disposed(by: disposedBag)
        
        
        vm.isFormValid.bind(to: saveButton.rx.isEnabled).disposed(by: disposedBag)
        pin.rx.text.orEmpty.scan("") {(old, new ) -> String in
            return new
        }.bind(to: pin.rx.text)
            .disposed(by: disposedBag)
    }
    
    func bindButtons(){
        saveButton.rx
            .tap.bind{
                debugPrint("sasa")
            }.disposed(by: disposedBag)
        
        vm.isFormValid.asDriver(onErrorJustReturn: false).drive(onDisposed: {
        onNext:do {
            
        }
        })
    }
}

extension CreateContactViewController {
    
    @IBAction func save(){
        vm.savePin(with: disposedBag)
    }

    
}

