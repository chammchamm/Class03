//
//  ViewController.swift
//  class03
//
//  Created by Jennifer Lin on 2019/4/22.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ibmsg: UILabel!
    
    @IBAction func pushdown(_ sender: Any) {
        ibmsg.text = "Hi class03"
    }
    
    
    @IBAction func btnMoveToImageClicked(_ sender: Any) {
        let alert = UIAlertController(title: "資訊", message:"YN", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "YES", style: .default, handler: { action in
            
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "moveToM2KSegue", sender: self)
            }
            
        })
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "NO", style: .default, handler: { action in
        })
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
        
    }
  
    
    @IBAction func btnTableClicked(_ sender: Any) {
    
    self.performSegue(withIdentifier: "moveToTableSegue", sender: self)
    }
    
    
   
    @IBAction func btnMapClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "moveToMapSegue", sender: self)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let worker : FileWorker = FileWorker()
        
        worker.writeToFile(content: "中文", fileName: "info.txt", tag: 0)
        print("return from fileworker")
        
        let result: String = worker.readFromFile(fileName: "info.txt", tag: 0)
        print(result)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if (segue.identifier == "moveToM2KSegue") {
            print("move to M2Kseque")
        } else
    
        if (segue.identifier == "moveToMapSegue") {
            print("move To MapSegue")
 
        } else
        if (segue.identifier == "moveToTableSegue") {
            print("move To TableSegue")
            
        }
        
    }


}

