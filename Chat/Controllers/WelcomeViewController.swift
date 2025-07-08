//
//  ViewController.swift
//  Chat
//
//  Created by Lakshaya Singh Tanwar on 04/07/25.
//
import Foundation
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text=""
        var charindex = 0.0
        let titleText = "⚡Chat"
        for letter in  titleText{
            Timer.scheduledTimer(withTimeInterval: 0.2*charindex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charindex+=1
           
        }
                    
        
        
        
        
    }


}

