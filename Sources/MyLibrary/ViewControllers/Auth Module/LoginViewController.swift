//
//  LoginViewController.swift
//  
//
//  Created by Hitesh Surani on 16/01/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail : UITextField!
    @IBOutlet weak var txtPassword : UITextField!
    @IBOutlet weak var btnLogin : UIButton!
    
    lazy var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        txtEmail.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        txtPassword.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        btnLogin.isEnabled = viewModel.validateEmailPassword(email: txtEmail.text, password: txtPassword.text)
        viewModel.delegate = self
    }
    
}


//Mark:- Actions
extension LoginViewController{
    
    @objc func textFieldDidChange(){
        btnLogin.isEnabled = viewModel.validateEmailPassword(email: txtEmail.text, password: txtPassword.text)
    }
    
    @IBAction func btnLoginClick(){
        if let email = txtEmail.text,
           let password = txtPassword.text {
            self.view.endEditing()
            viewModel.doLogin(email: email, password: password)
        }
    }
}

//Mark:- Login callback method
extension LoginViewController: LoginDelegate{
    func onLoginSuccess() {
//        self.view.makeToast("This is a piece of toast")
    }
    
    func onLoginFail(message: String) {
        
    }
}
