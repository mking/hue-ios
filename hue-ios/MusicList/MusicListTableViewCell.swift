//
//  MusicListCellTableViewCell.swift
//  hue-ios
//
//  Created by Mark Sun on 10/21/16.
//  Copyright © 2016 Hue. All rights reserved.
//

import UIKit
import BEMCheckBox

class MusicListTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var checkBox: BEMCheckBox!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.checkBox.onAnimationType = BEMAnimationType.bounce
        self.checkBox.offAnimationType = BEMAnimationType.bounce
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
