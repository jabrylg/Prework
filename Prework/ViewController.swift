//
//  ViewController.swift
//  Prework
//
//  Created by Jabryl Guy on 1/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        // retrieve the bill amount from the text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // obtain the total tip by calculating tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip               
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total dollar amount label
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

