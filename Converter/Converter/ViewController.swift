//
//  ViewController.swift
//  Converter
//
//  Created by Evgeni' Roslik on 08/03/2017.
//  Copyright © 2017 Evgeni' Roslik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var currencySelector: UISegmentedControl!

    @IBOutlet var enteredValue: UITextField!


    @IBAction func buttonClick(_ sender: Any) {
        if (enteredValue.text!.isEmpty)
        {
            let alert = UIAlertController(title: "Error", message: "Please, enter value", preferredStyle: UIAlertControllerStyle.alert);
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil));
            self.present(alert, animated: true, completion: nil);
            return;
        }
    }
}

