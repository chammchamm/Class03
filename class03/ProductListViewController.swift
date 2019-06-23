//
//  ProductListViewController.swift
//  class03
//
//  Created by Jennifer Lin on 2019/6/17.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        print("In 1st tableview \(array.count)")
        
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier ) as! MyTableViewCell
        
        let title : String = array[indexPath.row]
        
 //       print("To show table content \(title)")
        
    cell.updateContent(content: title)
 //       cell.lbContent.text = title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        selectedContent = array[indexPath.row]
        
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "moveToDetailSegue", sender: self)
        }
        
    }
    
    
    var selectedContent : String?
    
    
    var array : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("In Product List View")
        
        // Do any additional setup after loading the view.
        
        array = ["Swift is a high-performance system programming language. It has a clean and modern syntax, offers seamless access to existing C and Objective-C code and frameworks, and is memory safe by default.", "SwiftUI uses a declarative syntax so you can simply state what your user interface should do. For example, you can write that you want a list of items consisting of text fields, then describe alignment, font, and color for each field. Your code is simpler and easier to read than ever before, saving you time and maintenance.", "c"]
        
    }
    
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if( segue.identifier == "moveToDetailSegue"){
            
            let destination = segue.destination as! DetailViewController
            
            destination.content = self.selectedContent
            
            
        }
        
        
    }
    
    
}
