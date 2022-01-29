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
    
    var imageNum = 0
    var messageNum = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!", "You are Great!", "You are Amazing!", "You are the bomb!"]
        
        messageNum += 1
        imageNum += 1
        
        if imageNum > 9 {
            imageNum = 0
        }
        
        if messageNum > messages.count - 1 {
            messageNum = 0
        }
         
        let imageName = "image\(imageNum)"
        imageView.image = UIImage(named: imageName)
        messageLabel.text = messages[messageNum]
        
    }
    
}
