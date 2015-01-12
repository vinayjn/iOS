//
//  TempViewController.swift
//  SwiftWeather
//
//  Created by BBIM1008 on 1/8/15.
//  Copyright (c) 2015 vinay. All rights reserved.
//

import UIKit

class TempViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var request : NSURLRequest = NSURLRequest(URL: NSURL(string: "")!)
        var operation : AFHTTPRequestOperation = AFHTTPRequestOperation(request: request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

