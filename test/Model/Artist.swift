//
//  Artist.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import Foundation

class Artist {
    
    var bandNaam:String?
    var bandLeden:String?
    var speelTijd:String?
    var afbeeldingsNaam:String?
    
    init(bandNaam:String, bandLeden:String, speelTijd:String, afbeeldingsNaam:String) {
        self.bandNaam = bandNaam
        self.bandLeden = bandLeden
        self.speelTijd = speelTijd
        self.afbeeldingsNaam = afbeeldingsNaam
    }
}