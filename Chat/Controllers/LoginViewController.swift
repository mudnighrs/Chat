//
//  LoginViewController.swift
//  Chat
//
//  Created by Lakshaya Singh Tanwar on 04/07/25.
//
import Foundation
import UIKit
import FirebaseAuth
class LoginViewController:UIViewController{
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text,let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
                if let e=error{
                    print(e)
                }else{
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
            }
        
        }
        
    }
    
}
    


