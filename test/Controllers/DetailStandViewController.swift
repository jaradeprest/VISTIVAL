//
//  DetailStandViewController.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit

class DetailStandViewController: UIViewController {

    
    @IBOutlet weak var lblStandName: UILabel!
    @IBOutlet weak var tvStand: UITextView!
    @IBOutlet weak var imageStand: UIImageView!
    var clickedStand:Stand?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblStandName.text = clickedStand!.standNaam
        imageStand.image = UIImage.init(named: clickedStand!.afbeeldingStandNaam!)
        tvStand.text = "Elke stand is open gedurende het hele VISTIVAL." //KAN NOG MET LINK NAAR VERSCHILLENDE STANDINFO (EXTRA ALS TIJD OVER IS)
        
    }
    
}
