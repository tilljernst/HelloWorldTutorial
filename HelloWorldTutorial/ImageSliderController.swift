//
//  ImageSliderController.swift
//  HelloWorldTutorial
//
//  Created by Till J. Ernst on 04.05.17.
//  Copyright © 2017 Till J. Ernst. All rights reserved.
//

import UIKit

class ImageSliderController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBAction func imageSliderAlpha(_ sender: UISlider) {
        let currentValue = CGFloat(sender.value)
        
        imageViewOutlet.alpha = currentValue
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
