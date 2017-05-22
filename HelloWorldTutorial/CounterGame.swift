//
//  CounterGame.swift
//  HelloWorldTutorial
//
//  Created by Till J. Ernst on 03.05.17.
//  Copyright © 2017 Till J. Ernst. All rights reserved.
//

import UIKit

class CounterGame: UIViewController {
    
    var counter: Int = 0
    var tapCounter: Int = 0
    var timer = Timer()

    @IBOutlet weak var punkteStandLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startButtonOutlet: UIButton!
    @IBOutlet weak var tappButtonOutlet: UIButton!
    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(CounterGame.timerAction), userInfo: nil, repeats: true)
        startButtonOutlet.isEnabled = false
        tappButtonOutlet.isHidden = false
        tapCounter = 0
    }
    @IBAction func tappButton(_ sender: Any) {
        tapCounter += 1
        timerLabel.text = "\(tapCounter) Punkte"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.text = "\(tapCounter) Punkte"
        tappButtonOutlet.isHidden = true
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timerAction() {
        if counter < 10 {
            counter += 1
            punkteStandLabel.text = "\(counter) Sekunden"
        } else {
            punkteStandLabel.text = "\(counter)  Sekunden"
            timer.invalidate()
            tappButtonOutlet.isHidden = true
            startButtonOutlet.isEnabled = true
            counter = 0
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
