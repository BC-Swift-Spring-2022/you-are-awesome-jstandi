//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jack Standefer on 1/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You are awesome!"
        imageView.image = UIImage(named: "image5")
    }
    
}

