//
//  MyBrowserViewController.swift
//  class03
//
//  Created by Jennifer Lin on 2019/5/6.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class MyBrowserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self,selector:
            #selector(keyboardWillAppear(notification:)),name:
            UIResponder.keyboardWillShowNotification, object: nil)
        
        
        NotificationCenter.default.addObserver(self,selector:
            #selector(keyboardWillDisAppear(notification:)),name:
            UIResponder.keyboardWillHideNotification, object:nil)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self,name:
            UIResponder.keyboardWillShowNotification, object: nil)
        
        
        NotificationCenter.default.removeObserver(self,name:
            UIResponder.keyboardWillHideNotification, object:nil)
        
        
    }
    
    @objc func keyboardWillDisAppear(notification: NSNotification?){
        print("keyboardWillDisAppear")
    }
    
    @objc func keyboardWillAppear(notification: NSNotification?){
        print("keyboardWillAppear")
    }
    
}
