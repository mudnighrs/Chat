//
//  ChatViewController.swift
//  Chat
//
//  Created by Lakshaya Singh Tanwar on 04/07/25.
//
import Foundation
import UIKit
import FirebaseAuth
class ChatViewController:UIViewController{
    
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextField: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        title="⚡Chat"
        navigationItem.hidesBackButton=true
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
       
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        
        
        
    }
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
}
