//
//  CartTableViewCell.swift
//  TaskForShopping
//
//  Created by Santosh kumar on 1/11/19.
//  Copyright © 2019 Santosh kumar. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cartImg: UIImageView!
    @IBOutlet weak var itemLbl: UILabel!
    @IBOutlet weak var payBtn: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
