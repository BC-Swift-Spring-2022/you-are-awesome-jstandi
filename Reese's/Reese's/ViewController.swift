//
//  ViewController.swift
//  Reese's
//
//  Created by Jack Standefer on 1/28/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let peanutButter = "You Got Peanut Butter in my Chocolate!"
        let chocolate = "You Got Chocolate in my Peanut Butter!"
        if messageLabel.text == peanutButter {
            messageLabel.text = chocolate
            messageLabel.textColor = .orange
            messageLabel.textAlignment = .right
        } else {
            messageLabel.text = peanutButter
            messageLabel.textColor = .brown
            messageLabel.textAlignment = .left
        }
    }
    
}

