//
//  LoginViewController.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/22/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    private let viewModel: LoginViewModelProtocol
    
    init(viewModel: LoginViewModelProtocol = LoginViewModel()) {
        super.init()
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func performBinding(){
        userName.rx.text.orEmpty.map { value in
            return value.isValidEmail
        }
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
