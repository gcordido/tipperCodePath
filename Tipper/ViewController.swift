//
//  ViewController.swift
//  Tipper
//
//  Created by Gustavo Cordido on 9/10/19.
//  Copyright © 2019 Gustavo Cordido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var addPeople: UIButton!
    @IBOutlet weak var perPersonLabel: UILabel!
    @IBOutlet weak var peopleNum: UILabel!
    
    var peopleCounter = 1
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }

    
    @IBAction func calculateTip(_ sender: Any)
    {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        peopleCounter = 1
        peopleNum.text = String(peopleCounter)
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total  labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perPersonLabel.text = String(format: "$%.2f", tip)
    }
    
    @IBAction func addPeople(_ sender: Any) {
        
        peopleCounter += 1
        peopleNum.text = String(peopleCounter)
        let bill =  Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        
        var tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        tip = tip / Double(peopleCounter)
        
        perPersonLabel.text = String(format: "$%.2f", tip)
    
    }
    
}

