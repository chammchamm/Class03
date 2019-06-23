//
//  MyTableViewCell.swift
//  class03
//
//  Created by Jennifer Lin on 2019/6/23.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static let identifier = "MyTableViewCell"
    
//    @IBOutlet weak var lbContent: UILabel!
    
    @IBOutlet weak var lbContent: UILabel!
    func updateContent(content : String) -> Void {
        
      self.lbContent.text = content
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
