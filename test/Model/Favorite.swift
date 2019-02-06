//
//  Favorite.swift
//  test
//
//  Created by mobapp04 on 04/02/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import Foundation

class Favorite{
    
    var liked:[Artist] = []
    var artist:Artist?
    
    init() {
        self.liked=[Artist].init()
    }
    
    
    func addToLiked() -> [Artist] {
        //FUNCTIE OM FAVORIETEN UIT ARTISTKLASSE TOE TE VOEGEN AAN FAVORITEKLASSE
        for artist in liked{
            if artist.isFavorite == true{
                liked.append(artist)
            }
        };return liked
    }
}
