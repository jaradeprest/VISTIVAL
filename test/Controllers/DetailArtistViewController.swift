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
    var clickedArtist:Artist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblArtistName.text = clickedArtist!.bandNaam
        tvBand.text = "Deze band bestaat uit: \(clickedArtist!.bandLeden!)"
        imageBand.image = UIImage.init(named: clickedArtist!.afbeeldingsNaam!)
        
    }

}
