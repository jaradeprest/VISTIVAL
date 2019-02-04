//
//  DetailArtistViewController.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit

class DetailArtistViewController: UIViewController {

    @IBOutlet weak var lblArtistName: UILabel!
    @IBOutlet weak var tvBand: UITextView!
    @IBOutlet weak var imageBand: UIImageView!
    @IBOutlet weak var btnFavorite: UIButton!
    var clickedArtist:Artist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblArtistName.text = clickedArtist!.bandNaam
        tvBand.text = "Deze band bestaat uit: \(clickedArtist!.bandLeden!). \nCHECK IT OUT BELOW!"
        imageBand.image = UIImage.init(named: clickedArtist!.afbeeldingsNaam!)
        if clickedArtist?.isFavorite==true{
            btnFavorite.tintColor = UIColor.red
        }else{btnFavorite.tintColor = UIColor.darkGray}
    }

    @IBAction func btnFavorite(_ sender: Any) {
        for dag in DAO.instance.playtimeLijst!{
            for info in dag.artistLijst {
                if clickedArtist === info{
                    info.isFavorite = !info.isFavorite!
                    if info.isFavorite! {
                        btnFavorite.tintColor = UIColor.red
                    }else{
                        btnFavorite.tintColor = UIColor.darkGray
                    }
                }
            }
    }

}


}
