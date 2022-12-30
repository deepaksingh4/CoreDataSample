//
//  LoginViewController.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/22/22.
//

import UIKit
import RxCocoa
import RxSwift

class LoginViewController: UIViewController, Storyboarded {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var password: UITextField!
    
    
    private let viewModel: LoginViewModelProtocol = LoginViewModel()
    let bag: DisposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.setBorder(width: 2, color: .white)
        btnLogin.addCorner()
        btnLogin.isEnabled = false
        performBinding()
        // Do any additional setup after loading the view.
    }
    
    func performBinding(){
        userName.rx.text.orEmpty.bind(to: viewModel.userName).disposed(by: bag)
        password.rx.text.orEmpty.bind(to: viewModel.password).disposed(by: bag)
        viewModel.isValidCred.asDriver(onErrorJustReturn: true).drive(btnLogin.rx.isEnabled)
            .disposed(by: bag)
       
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
