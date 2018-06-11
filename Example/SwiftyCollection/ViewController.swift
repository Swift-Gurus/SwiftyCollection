//
//  ViewController.swift
//  SwiftyCollection
//
//  Created by Badreddine El Jamali on 06/04/2018.
//  Copyright (c) 2018 Badreddine El Jamali. All rights reserved.
//

import UIKit
import SwiftyCollection

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var test: Array = [1,2,2,2,3,4,4,9]
        test.unify()
        print(test)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

