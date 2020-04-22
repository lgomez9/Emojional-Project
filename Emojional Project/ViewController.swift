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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        // Figure out which UI Button was clicked
        // Send the message associated with that button
        
        let alertController = UIAlertController(title: "This is an alert", message: "Got it?", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}

