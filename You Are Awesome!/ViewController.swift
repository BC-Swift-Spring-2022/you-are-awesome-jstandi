//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jack Standefer on 1/16/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNum = -1
    var messageNum = -1
    var soundNum = -1
    let totalImages = 10
    let totalSounds = 5
    var audioPlayer: AVAudioPlayer!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: \(error.localizedDescription) could not initialize AVAudioPlayer")
            }
        } else {
            print("Error: Could not read data from file 'sound0'")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while newNumber == originalNumber
        return newNumber
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!", "You are Great!", "You are Amazing!", "You are the bomb!"]
        
        messageNum = nonRepeatingRandom(originalNumber: messageNum, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNum]
        
        imageNum = nonRepeatingRandom(originalNumber: imageNum, upperLimit: totalImages-1)
        imageView.image = UIImage(named: "image\(imageNum)")
        
        if playSoundSwitch.isOn {
            soundNum = nonRepeatingRandom(originalNumber: soundNum, upperLimit: totalSounds-1)
            playSound(name: "sound\(soundNum)")
        }
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if let sound = NSDataAsset(name: "sound0") {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                if audioPlayer.isPlaying {
                    audioPlayer.stop()
                }
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        } else {
            print("Error: could not read data from file 'sound0'")
        }
    }
    
}
