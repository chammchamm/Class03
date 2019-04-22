//
//  ViewController.swift
//  class03
//
//  Created by Jennifer Lin on 2019/4/22.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ibmsg: UILabel!
    
    @IBAction func pushdown(_ sender: Any) {
        ibmsg.text = "hello class03"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

