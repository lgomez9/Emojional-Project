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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel?.text
        
        // Figure out which UI Button was clicked
        // Send the message associated with that button
        
        let alertController = UIAlertController(title: selectedEmotion!, message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        alertController.addAction(UIAlertAction(title: "Bye", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}

