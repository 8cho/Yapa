//
//  ViewController.swift
//  yapa
//
//  Created by Gamba on 8/20/14.
//  Copyright (c) 2014 8cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipTitleLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalTitleLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var experienceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
        billField.font = UIFont (name: "DS-Digital", size: 100)
        tipLabel.text = "$0.00"
        tipLabel.font = UIFont (name: "Maven Pro", size: 24)
        tipTitleLabel.font = UIFont (name: "Maven Pro", size: 16)
        totalLabel.text = "$0.00"
        totalLabel.font = UIFont (name: "Maven Pro", size: 42)
        totalTitleLabel.font = UIFont (name: "Maven Pro", size: 22)
        experienceLabel.font = UIFont (name: "Maven Pro", size: 17)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        var billAmount = NSString(string: billField.text).doubleValue
        var 💰 = billAmount * tipPercentage
        var 💸 = billAmount + 💰
        
        tipLabel.text = "$\(💰)"
        totalLabel.text = "$\(💸)"
        
        tipLabel.text = String(format: "$%.2f", 💰)
        totalLabel.text = String(format: "$%.2f", 💸)
    }

// COMMENTING TO SAVE, BUT WANT THE KEYBOARD TO BE ALWAYS VISIBLE
//    @IBAction func onTap(sender: AnyObject) {
//        view.endEditing(true)
//    }
}

