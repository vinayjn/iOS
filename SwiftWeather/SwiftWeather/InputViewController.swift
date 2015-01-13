//
//  InputViewController.swift
//  SwiftWeather
//
//  Created by BBIM1008 on 1/13/15.
//  Copyright (c) 2015 vinay. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet weak var tempField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func processInput(sender: UIButton) {
        
    }
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    
    
}
