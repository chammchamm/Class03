//
//  DetailViewController.swift
//  class03
//
//  Created by Jennifer Lin on 2019/6/23.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var content : String?
    
    @IBOutlet weak var lbContent: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        lbContent.text = content
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
