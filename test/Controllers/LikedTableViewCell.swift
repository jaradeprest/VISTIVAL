//
//  LikedTableViewCell.swift
//  test
//
//  Created by mobapp04 on 01/02/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit

class LikedTableViewCell: UITableViewCell {

    @IBOutlet weak var lblSpeelTijd: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSpeelDag: UILabel!
    var artist:Artist?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
