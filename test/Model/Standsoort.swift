//
//  Standsoort.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import Foundation

class Standsoort{
    
    var naam:String?
    var standLijst:[Stand]
    
    init(naam:String) {
        self.naam = naam
        self.standLijst = [Stand].init()
    }
}
