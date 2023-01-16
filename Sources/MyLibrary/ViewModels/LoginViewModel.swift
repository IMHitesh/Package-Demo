//
//  File.swift
//  
//
//  Created by Hitesh Surani on 16/01/23.
//

import Foundation

protocol LoginDelegate {
    func onLoginSuccess()
    func onLoginFail(message: String)
}

class LoginViewModel{
    
    var delegate: LoginDelegate?
    
    func doLogin(email: String, password: String){
        if email ==  "hitesh",
           password == "12345678" {
            delegate?.onLoginSuccess()
        }else{
            delegate?.onLoginFail(message: "Please enter correct email & password")
        }
    }
    
    func validateEmailPassword(email: String?, password: String?) -> Bool {
        return email?.count ?? 0 > 0 && password?.count ?? 0 > 0
    }
}
