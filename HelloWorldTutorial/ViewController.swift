//
//  ViewController.swift
//  HelloWorldTutorial
//
//  Created by Till J. Ernst on 02.05.17.
//  Copyright © 2017 Till J. Ernst. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func mainButton(_ sender: Any) {
        self.resignFirstResponder()
        textLabel.text = textField.text
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

