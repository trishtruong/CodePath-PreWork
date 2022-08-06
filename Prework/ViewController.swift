//
//  ViewController.swift
//  Prework
//
//  Created by Trish Truong on 8/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // variables
        let bill = Double(billAmountField.text!) ?? 0
        let tipOptions = [0.15, 0.18, 0.20]
        
        // calculations
        let tip = bill * tipOptions[tipSelector.selectedSegmentIndex]
        let total = bill + tip
        
        // update labels
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
}

