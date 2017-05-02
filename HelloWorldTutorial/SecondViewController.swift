//
//  SecondViewViewController.swift
//  HelloWorldTutorial
//
//  Created by Till J. Ernst on 02.05.17.
//  Copyright © 2017 Till J. Ernst. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    

    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func calculateButton(_ sender: Any) {
        let randomNumber = Int(arc4random_uniform(UInt32(100)))
        numberLabel.text = String(randomNumber)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
