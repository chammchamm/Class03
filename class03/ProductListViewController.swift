//
//  ProductListViewController.swift
//  class03
//
//  Created by Jennifer Lin on 2019/6/17.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return array.count
    }
    
    
    
 //   func tableView(_ tableView: UITableView, //didSelectRowAt indexPath: IndexPath) {
     //   <#code#>
  //  }
    
    var array : [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
