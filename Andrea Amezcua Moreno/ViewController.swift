//
//  ViewController.swift
//  Andrea Amezcua Moreno
//
//  Created by Andrea Amezcua Moreno on 9/4/19.
//  Copyright © 2019 Andrea Amezcua Moreno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputFielt: UITextField!
    @IBOutlet weak var percentControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.10, 0.15]
        let bill = Double(inputFielt.text!) ?? 0
        let tip = (bill * tipPercent[percentControl.selectedSegmentIndex])
        let total = tip + bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

