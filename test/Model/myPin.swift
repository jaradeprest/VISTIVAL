//
//  MyPin.swift
//  test
//
//  Created by mobapp04 on 01/02/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import Foundation
import MapKit

class myPin : NSObject, MKAnnotation {
    
    //verplicht in te vullen bij een annotatie. Zonder positie op de kaart kan je niets tekenen op de kaart => geen pin
    var coordinate: CLLocationCoordinate2D
    //optioneel, eerder voor pop up boven pins
    var title: String?
    var subtitle: String?
    var afb: UIImage?
    
    init(coordinate: CLLocationCoordinate2D, title:String, subtitle:String, afb:UIImage) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.afb = afb
    }
}
