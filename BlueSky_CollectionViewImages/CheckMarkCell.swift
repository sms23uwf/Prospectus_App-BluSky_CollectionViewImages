//
//  CheckMarkCell.swift
//  BlueSky_CollectionViewImages
//
//  Created by Steve Satterfield on 11/18/18.
//  Copyright © 2018 uwf. All rights reserved.
//

import UIKit

class CheckMarkCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnCheckMark: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
