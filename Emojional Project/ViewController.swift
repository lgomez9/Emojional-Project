//
//  ViewController.swift
//  Emojional Project
//
//  Created by Leonardo Gómez on 4/22/20.
//  Copyright © 2020 Leonardo Gómez. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    let emojis = ["🙂" : "happy", "😘" : "lovey", "😭" : "crying", "😡" : "angry"]
    let customMessages = [
        "happy" : ["Glad you're feeling good!", "Way to go!", "Keep the good times rolling!"],
        "lovey" : ["Aww, I love you too!", "Right back at you 😘", "I love you so much!"],
        "crying" : ["It'll get better I promise!", "Tell me what's wrong.", "I hope you feel better soon!"],
        "angry" : ["Try to let it go!", "Deep breaths... 3... 2... 1...", "Turn that frown upside-down!"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = (sender.titleLabel?.text)!
        let options = customMessages[emojis[selectedEmotion]!]!
        let emojiMessage = options[Int.random(in: 0 ..< options.count)]
        
        
        
        // Figure out which UI Button was clicked
        // Send the message associated with that button
        
        let alertController = UIAlertController(title: selectedEmotion, message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        alertController.addAction(UIAlertAction(title: "Bye", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}

