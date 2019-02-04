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
    @IBOutlet weak var btnFav: UIButton!
    var artist:Artist?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if artist?.isFavorite==true{
            btnFav.tintColor = UIColor.red
        }else{btnFav.tintColor = UIColor.darkGray}
    }
    
    @IBAction func favouritePressed(_ sender: Any) {
        if artist!.isFavorite! {
            btnFav.tintColor = UIColor.red
            }else{
                btnFav.tintColor = UIColor.darkGray
                    }
    }
}
