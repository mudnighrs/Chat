//
//  RegisterViewController.swift
//  Chat
//
//  Created by Lakshaya Singh Tanwar on 04/07/25.
//
import Foundation
import UIKit
import Firebase
import FirebaseCore
import FirebaseAuth
class RegisterViewController:UIViewController{
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerPressed(_ sender: Any) {
        if let email = emailTextField.text ,let password = passwordTextField.text{
            Auth.auth().createUser(withEmail:email , password: password) { authResult, error in
                if let e = error{
        
                    self.showAlert(message: e.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                }
            }

            
        }
        
    }
    
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }

    
    
}
