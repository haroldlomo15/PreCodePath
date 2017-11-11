//
//  ViewController.swift
//  PreCodePath
//
//  Created by Harold  on 11/10/17.
//  Copyright © 2017 Harold . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billTextView: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 50/255, green: 74/255, blue: 129/255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapGestureDidTapped(_ sender: Any) {
        view.endEditing(true)
        
    }
    @IBAction func calcTipTextView(_ sender: Any) {
    
        let tipPercentage = [0.10, 0.2, 0.25]
        let bill = Double(billTextView.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

