//
//  ArtistTableViewCell.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {

    @IBOutlet weak var btnFav: UIButton!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    var artist:Artist?
    var liked:[Artist] = []
    
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
        for dag in DAO.instance.playtimeLijst!{
            for info in dag.artistLijst {
                if artist === info{
                    info.isFavorite = !info.isFavorite!
                    if info.isFavorite! {
                        btnFav.tintColor = UIColor.red
                        liked += [info]
                        print(liked)
                    }else{
                        btnFav.tintColor = UIColor.darkGray
                    }
                }
            }
        }
    }

}
