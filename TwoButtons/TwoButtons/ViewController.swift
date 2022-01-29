//
//  ViewController.swift
//  TwoButtons
//
//  Created by Jack Standefer on 1/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = "0"
    }
    
    var number = 0
    
    @IBAction func plusOnePressed(_ sender: UIButton) {
        number += 1
        numberLabel.text = String(number)
    }
    
    @IBAction func plusTwoPressed(_ sender: UIButton) {
        number += 2
        numberLabel.text = String(number)
    }
    
}

