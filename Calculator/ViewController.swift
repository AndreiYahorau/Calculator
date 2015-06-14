//
//  ViewController.swift
//  Calculator
//
//  Created by Andrew Egorov on 13.06.15.
//  Copyright (c) 2015 Andrew Egorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            userIsInTheMiddleOfTypingANumber = true
            display.text = digit
        }
    }
}

