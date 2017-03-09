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
        currencySelector.selectedSegmentIndex = 0;
        currentCurrency = 3.240;
    }
    
    private var currentCurrency :Double!;
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var currencySelector: UISegmentedControl!

    @IBOutlet var enteredValue: UITextField!

    @IBAction func currencyChanged(_ sender: UISegmentedControl) {
        switch currencySelector.selectedSegmentIndex {
        case 0:
            currentCurrency = 3.265;
            break;
        case 1:
            currentCurrency = 2.209;
            break;
        case 2:
            currentCurrency = 1.897;
            break;
        default:
            break;
        }
    }

    @IBAction func buttonClick(_ sender: Any) {
        if (enteredValue.text!.isEmpty) {
            self.present(makeAlert(message: "Please, enter value"), animated: true, completion: nil);
            return;
        }
        let value = Double(enteredValue.text!);
        if (value == nil)
        {
            self.present(makeAlert(message: "Please, enter correct value"), animated: true, completion: nil);
            return;
        }
        var count:Double;
        if (currencySelector.selectedSegmentIndex == 0)
        {
            count = 100;
        }
        else
        {
            count = 1;
        }
        let result = value! * currentCurrency / count;
        
        resultLabel.text = String(result);
    }
    
    
    func makeAlert(message:String) -> UIAlertController {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertControllerStyle.alert);
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil));
        return alert;
    }
}

