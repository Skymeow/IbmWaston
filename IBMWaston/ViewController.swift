//
//  ViewController.swift
//  IBMWaston
//
//  Created by Sky Xu on 11/6/17.
//  Copyright © 2017 Sky Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var ibmButton: UIButton!
    
    @IBAction func ibmButtonTapped(_ sender: Any) {
        NSLog(textField.text!)
        ibmLabel.text = textField.text
    }
    
    @IBOutlet weak var ibmLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

