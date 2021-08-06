//
//  ProductTableViewCell.swift
//  UITableView
//
//  Created by 半斤 on 2020/9/2.
//  Copyright © 2020 半斤. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var proTitle: UILabel!
    
    @IBOutlet weak var proDetail: UILabel!
    
    @IBOutlet weak var price: UILabel!
}
