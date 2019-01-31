//
//  Stand.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import Foundation

class Stand {
    
    var standNaam:String?
    var standSoort:String?
    var afbeeldingStandNaam:String?
    
    init(standNaam:String, standSoort:String, afbeeldingStandNaam:String) {
        self.standNaam = standNaam
        self.standSoort = standSoort
        self.afbeeldingStandNaam = afbeeldingStandNaam
    }
}
