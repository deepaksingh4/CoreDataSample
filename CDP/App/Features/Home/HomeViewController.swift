//
//  ViewController.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/23/22.
//

import UIKit
import RxCocoa
import RxSwift

class HomeViewController: UIViewController {
    
    var vm = HomeViewModel()
    let disposedBag = DisposeBag()
    
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var pinKey: UITextField!
    @IBOutlet weak var pin: UITextField!
    
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var saveButton: UIBarButtonItem!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        bindForm()
    }
    
    func setUpUI(){
        happyLabel.text = "Thanks for filling the form correctly ;)"
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
        
        saveButton.rx.tap.asObservable().bind(to: <#T##()...##()#>)
        
        vm.isFormValid.bind(to: saveButton.rx.isEnabled).disposed(by: disposedBag)
        vm.isFormValid.bind(to: happyLabel.rx.isHidden).disposed(by: disposedBag)
        pin.rx.text.orEmpty.scan("") {(old, new ) -> String in
            return new
        }.bind(to: pin.rx.text)
            .disposed(by: disposedBag)
    }
}

extension HomeViewController {
    
    @IBAction func save(){
        vm.savePin(with: disposedBag)
    }

}

