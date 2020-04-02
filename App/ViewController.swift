//
//  ViewController.swift
//  App
//
//  Created by Pia Leung on 30/03/2020.
//  Copyright © 2020 Pia Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    var count: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func increment(_ sender: UIButton) {
        setLabel(sender);
        count += 1
        updateCountLabel()
        
    }
    
    @IBAction func decrement(_ sender: UIButton) {
        setLabel(sender);
        count -= 1
        updateCountLabel()
    }
    
    func setLabel(_ sender: UIButton) {
        if let buttonLabel = sender.titleLabel?.text {
            label.text = "clicked: \(buttonLabel)";
        }
    }
    
    func updateCountLabel() {
        countLabel.text = String(count)
    }
}

