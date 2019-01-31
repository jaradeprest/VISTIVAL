//
//  Playtime.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import Foundation

class Playtime{
    
    var speelTijd:String?
    var artistLijst:[Artist]
    
    init(speelTijd:String) {
        self.speelTijd = speelTijd
        self.artistLijst = [Artist].init()
    }
}
