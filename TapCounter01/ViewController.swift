//
//  ViewController.swift
//  TapCounter01
//
//  Created by Johan on 12/09/2017.
//  Copyright © 2017 Johan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCounter()
    }
    
    @IBAction func tapRestButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0
    }
    
    @IBAction func longPressTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCounter()
    }
    
    func increaseCounter() {
        count = count + 1
        countLabel.text = String(count)
    }

}

