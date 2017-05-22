//
//  webViewController.swift
//  HelloWorldTutorial
//
//  Created by Till J. Ernst on 03.05.17.
//  Copyright © 2017 Till J. Ernst. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var urlField: UITextField!
    
    @IBAction func openUrl(_ sender: Any) {
        print("Button gedrückt")
        
        let text = urlField.text
        let url = URL(string: text!)
        let request = URLRequest (url: url!)
        
        
        webView.loadRequest(request)
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
