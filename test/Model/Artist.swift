//
//  Artist.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import Foundation

class Artist {
    
    var id:Int?
    var bandNaam:String?
    var bandLeden:String?
    var speelTijd:String?
    var speelDag:String?
    var afbeeldingsNaam:String?
    var isFavorite:Bool?
    var song:String?
    
    init(id:Int, bandNaam:String, bandLeden:String, speelTijd:String, speelDag:String, afbeeldingsNaam:String, song:String) {
        self.id = id
        self.bandNaam = bandNaam
        self.bandLeden = bandLeden
        self.speelTijd = speelTijd
        self.speelDag = speelDag
        self.afbeeldingsNaam = afbeeldingsNaam
        self.isFavorite = false
        self.song = song
    }
    
}
