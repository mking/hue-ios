//
//  MusicListCellTableViewCell.swift
//  hue-ios
//
//  Created by Mark Sun on 10/21/16.
//  Copyright © 2016 Hue. All rights reserved.
//

import UIKit
import BEMCheckBox

class MusicListCellTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet var checkbox:BEMCheckBox!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
