//
//  ViewController.swift
//  IBMWaston
//
//  Created by Sky Xu on 11/6/17.
//  Copyright © 2017 Sky Xu. All rights reserved.
//

import UIKit
import NaturalLanguageUnderstandingV1
import ToneAnalyzerV3

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var ibmButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ibmButtonTapped(_ sender: Any) {
        NSLog(textField.text!)
        let username = "bf8cb6c4-8fe4-4188-9aef-4b3d43471706"
        let password = "tnRM0JVOddLi"
        let version = "2017-11-07"
        let toneAnalyzer = ToneAnalyzer(username: username, password: password, version: version)
//        let naturalLanguageUnderstanding = NaturalLanguageUnderstanding(username: username, password: password, version: version)
//        let features = Features(concepts: ConceptsOptions(limit: 5))
        let text = textField.text!
        let failure = { (error: Error) in print(error) }
        toneAnalyzer.getTone(ofText: text, failure: failure) {
            tones in
            print(tones)
        }
//        let parameters = Parameters(features: features, text: textToAnalyze)
//        NSLog("calling GetTextsentiment  url         :::::::::::::")
//        naturalLanguageUnderstanding.analyze(parameters: parameters, failure: failure){
//            results in
//            print(results)
//        }
       
//           self.ibmLabel.text = "text status sentiment ::::::::::::: " + (sentiment.docSentiment?.type)!
        
    }
    
    @IBOutlet weak var ibmLabel: UILabel!
}

