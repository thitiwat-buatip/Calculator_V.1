//
//  ViewController.swift
//  Calculator
//
//  Created by thitiwat on 24/1/60.
//  Copyright © พ.ศ. 2560 thitiwat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnscreen: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0
    @IBOutlet weak var label: UILabel!
    @IBAction func numBers(_ sender: UIButton)
    {
        
        if performingMath == true
        {
            label.text = String(sender.tag-1)
            numberOnscreen = Double(label.text!)!
            performingMath = false
            
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnscreen = Double(label.text!)!
        }
        
    }
    
    @IBAction func Operator(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 // Divide
            {
                label.text = "/"
            }
            else if sender.tag == 13 //Multiply
            {
                label.text = "*"
            }
            else if sender.tag == 14 //Minus
            {
                label.text = "-"
            }
            else if sender.tag == 15 //Plus
            {
                label.text = "+"
            }
            performingMath = true
            operation = sender.tag
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNumber / numberOnscreen)
            }
            else if operation == 13
            {
                label.text = String(previousNumber * numberOnscreen)
            }
            else if operation == 14
            {
                label.text = String(previousNumber - numberOnscreen)
            }
            else if operation == 15
            {
                label.text = String(previousNumber + numberOnscreen)
            }
            performingMath = true	
            
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0
            numberOnscreen = 0
            operation = 0
        }
        
    }
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

