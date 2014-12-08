//
//  ViewController.swift
//  Age of Laika
//
//  Created by ChangKH on 2014/12/6.
//  Copyright (c) 2014年 kunhsiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        
        let optionalIntFromTextField = stringFromTextField.toInt()
        
        let intFromOptional = optionalIntFromTextField!
        
        dogYearsLabel.text = "\(intFromOptional*7) Human Years"
        dogYearsLabel.hidden = false
        enterHumanYearsTextField.resignFirstResponder()
    }
}