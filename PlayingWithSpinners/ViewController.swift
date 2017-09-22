//
//  ViewController.swift
//  PlayingWithSpinners
//
//  Created by Michael Vilabrera on 9/21/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorizerView: ColorizerView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var colorizerSwitch: UISwitch!
    @IBOutlet weak var colorizerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizerView.isCircular = true
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if colorizerView.isAnimating {
            button.setTitle("Animate", for: .normal)
            colorizerView.stopAnimating()
        } else {
            button.setTitle("Stop", for: .normal)
            colorizerView.startAnimating()
        }
    }
    
    @IBAction func colorizerViewSwitchToggled(_ sender: UISwitch) {
        if sender.isOn {
            colorizerView.isCircular = true
            colorizerLabel.text = "Whole View"
        } else {
            colorizerView.isCircular = false
            colorizerLabel.text = "Flat View"
        }
    }
}

