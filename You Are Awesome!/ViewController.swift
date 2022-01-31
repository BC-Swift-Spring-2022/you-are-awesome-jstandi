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
        
        let chosenMessage = messages[Int.random(in: 0...messages.count-1)]
        
        let chosenImage = "image" + String(Int.random(in: 0...9))
        
        imageView.image = UIImage(named: chosenImage)
        messageLabel.text = chosenMessage
        
//      update for github push
        
    }
    
}
