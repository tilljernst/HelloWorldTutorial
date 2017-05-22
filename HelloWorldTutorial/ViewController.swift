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
    
    @IBAction func actionViewButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert", message: "Willst du fortfahren?", preferredStyle: .actionSheet)
        let yesAction = UIAlertAction(title: "ja", style: .default) {(action) -> Void in print("ja gedrückt")
        }
        let noAction = UIAlertAction(title: "nein", style: .default){(action) -> Void in print("nein gedrückt")
        }
        let maybeAction = UIAlertAction(title: "vielleicht", style: .default){(action) -> Void in print("vielleicht gedrückt")
        }
        alertController.addAction(noAction)
        alertController.addAction(yesAction)
        alertController.addAction(maybeAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func mainButton(_ sender: Any) {
        self.resignFirstResponder()
        textLabel.text = textField.text
    }
    @IBAction func webpageButton(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: "http://www.google.ch")!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Manuell hinzugefügtes Textfeld
        let textField = UITextField()
        textField.placeholder = "first name"
        textField.frame = CGRect(x: 20, y: 120, width: 280, height: 31)
        textField.borderStyle = UITextBorderStyle.roundedRect
        self.view.addSubview(textField)
        // Manuell hinzugefügtes Label
        let manualLabel = UILabel()
        manualLabel.text = "Lesson 6.1"
        manualLabel.frame = CGRect(x: 0, y: 145, width: self.view.frame.size.width, height: 21)
        manualLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(manualLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

