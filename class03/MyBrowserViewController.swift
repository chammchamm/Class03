//
//  MyBrowserViewController.swift
//  class03
//
//  Created by Jennifer Lin on 2019/5/6.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit
import WebKit

class MyBrowserViewController: UIViewController, UITextFieldDelegate, AsyncReponseDelegate {
    
    
    func receviedReponse(_ sender: AsyncRequestWorker, responseString: String, tag: Int) {
        
        print(responseString)
  
    }
    


    @IBOutlet weak var btnGoBottomConstraint: NSLayoutConstraint!

   
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    let worker = AsyncRequestWorker()
        
        worker.reponseDelegate = self
        
        worker.getResponse(from: "https://www.google.com", tag: 1)
        
        
//        myWebView.load(URLRequest( url: URL(string: "https://www.google.com")!))
//        myWebView,load(URLRequest(url,URL(s))
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisAppear(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(dataReceived(notification:)), name: NSNotification.Name(rawValue: "response.received"), object: nil)
        
        
//        NotificationCenter.default.addObserver(self,selector:
//            #selector(keyboardWillDisAppear(notification:)),name:
//            UIResponder.keyboardWillHideNotification, object:nil)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self,name:
            UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.removeObserver(self,name:
            UIResponder.keyboardWillHideNotification, object: nil)
        
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "response.received"), object: nil)
//
//
//        NotificationCenter.default.removeObserver(self,name:
//            UIResponder.keyboardWillHideNotification, object:nil)
    }
    

    @objc func keyboardWillAppear(notification: NSNotification?){
        print("keyboardWillAppear")
        
        guard let frame = notification?.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
            else {
                return}
        
        self.btnGoBottomConstraint.constant = frame.cgRectValue.height + 10;
        
    }
    
    @objc func keyboardWillDisAppear(notification: NSNotification?){
        print("keyboardWillDisAppear")
        
        
    }
    
    @objc func dataReceived(notification: NSNotification?){
        
        guard let responseString = notification?.userInfo?["aaa"] as? String else  {
            return
        }
        print("\(responseString)")
        
        myWebView.loadHTMLString(responseString, baseURL: URL(string: "https://www.google.com")!)
        }
}
