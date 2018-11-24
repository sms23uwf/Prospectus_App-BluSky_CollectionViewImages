//
//  loTableViewCell.swift
//  BlueSky_CollectionViewImages
//
//  Created by Steve Satterfield on 11/18/18.
//  Copyright © 2018 uwf. All rights reserved.
//

import UIKit

class loTableViewCell: UITableViewCell {

    @IBOutlet weak var loCheckBox: UIButton!
    @IBOutlet weak var loLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
