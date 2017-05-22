//
//  SwitchController.swift
//  HelloWorldTutorial
//
//  Created by Till J. Ernst on 03.05.17.
//  Copyright © 2017 Till J. Ernst. All rights reserved.
//

import UIKit

class SwitchController: UIViewController {
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var mainSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainSwitch.addTarget(self, action: #selector (SwitchController.switchIsChanged), for: UIControlEvents.valueChanged)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func switchIsChanged(mainSwitch: UISwitch){
        if mainSwitch.isOn {
            switchLabel.text = "switch is on"
        } else {
            switchLabel.text = "switch is off"
        }
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
