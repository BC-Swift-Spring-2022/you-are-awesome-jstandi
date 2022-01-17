//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jack Standefer on 1/16/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad has run")
        messageLabel.text = "This is a message."
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed")
        messageLabel.text = "You are awesome!"
    }
    
}

