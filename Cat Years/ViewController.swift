//
//  ViewController.swift
//  Cat Years
//
//  Created by Richard Garrod on 09/08/2015.
//  Copyright (c) 2015 RichardGarrod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var outputField: UILabel!
    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var catAge: UITextField!
    
    @IBAction func catAgeChanged(sender: AnyObject) {
        changeLabel()
    }
    
    @IBAction func calcButton(sender: AnyObject) {
        changeLabel()
    }
    
    func changeLabel()
    {
        if catAge.text.isEmpty || catAge.text.toInt() == nil
        {
            return
        }
        
        var enteredAge = catAge.text.toInt()!
        var calculatedAge = enteredAge * 7
        
        outputLabel.text = "Your cat's age in cat years is \(calculatedAge)"
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

