//
//  DAO.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import Foundation

class DAO{
    
    var playtimeLijst:[Playtime]?
    var standSoortLijst:[Standsoort]?
    
    init() {
        //ARTIESTEN
        let fabiola = Artist.init(bandNaam: "2Fabiola", bandLeden: "Pat Krimson, Olivier Adams & Zohra Aït-Fath", speelTijd: "1:00-2:30", afbeeldingsNaam: "2fabiola.jpg")
        let admiral = Artist.init(bandNaam: "Admiral Freebee", bandLeden: "Tom Van Laere", speelTijd: "19:00-20:00", afbeeldingsNaam: "admiral.jpg")
        let commerce = Artist.init(bandNaam: "\'t Hof Van Commerce", bandLeden: "Flip Kowlier, DJ 4T4 & Serge Buyse", speelTijd:"22:00-23:00", afbeeldingsNaam: "hof.jpg")
        let preuteleute = Artist.init(bandNaam: "Preuteleute", bandLeden: "Sebastien Dewaele, Tom Van Rijckeghem, Marc Bruijn, Pieter Van den Berkmortel & Ben Van Camp", speelTijd:"23:30-01:30", afbeeldingsNaam: "preute.jpg")
        let kenji = Artist.init(bandNaam: "Kenji Minogue", bandLeden: "Fanny Willen, Conny Komen & Mista Pig", speelTijd:"20:30-21:30", afbeeldingsNaam: "kenji.jpg")
        let blunt = Artist.init(bandNaam: "Blunt", bandLeden: "Gino Verstraete, Stijn Deldaele, Yannick Swennen, Pieter Nuytens & Jurgen Demeyere", speelTijd:"17:00-17:45", afbeeldingsNaam: "blunt.jpg")
        let channel = Artist.init(bandNaam: "Channel Zero", bandLeden: "Franky De Smet-Van Damme, Mikey Doling, Tino De Martino & Phil Baheux", speelTijd:"22:00-23:00", afbeeldingsNaam: "zero.jpg")
        let hooverphonic = Artist.init(bandNaam: "Hooverphonic", bandLeden: "Alex Callier, Raymond Geerts & Luka Cruyberghs", speelTijd:"18:00-18:45", afbeeldingsNaam: "hoover.jpg")
        let arsenal = Artist.init(bandNaam: "Arsenal", bandLeden: "Hendrik Willemyns, John Roan & Leonie Gysel", speelTijd:"20:30-21:30", afbeeldingsNaam: "arsenal.jpg")
        let fete = Artist.init(bandNaam: "Vive la Fête", bandLeden: "Els Pynoo & Danny Mommens", speelTijd:"19:00-20:00", afbeeldingsNaam: "fete.jpg")
        let goose = Artist.init(bandNaam: "Goose", bandLeden: "Michael Karhousse, Dave Martijn, Tom Coghe & Bert Libeert", speelTijd:"23:30-00:30", afbeeldingsNaam: "goose.jpg")
        let tlp = Artist.init(bandNaam: "TLP", bandLeden: "Paul Lannoy",speelTijd:"1:00-2:30", afbeeldingsNaam: "tlp.jpg")
        
        //artiesten toevoegen aan juiste dag
        let vrijdag = Playtime.init(speelTijd: "Vrijdag")
        vrijdag.artistLijst += [admiral,kenji, commerce, goose, tlp]
        let zaterdag = Playtime.init(speelTijd: "Zaterdag")
        zaterdag.artistLijst += [blunt, hooverphonic, fete, arsenal, channel, preuteleute, fabiola]
        //dagen toevoegen aan lijst van playtime
        self.playtimeLijst = [vrijdag, zaterdag]
        
        
        
        //STANDEN
        
        //standen toevoegen aan juiste standsoort
        //let food = Standsoort.init(...)
        //food.standLijst = Standsoort.init(...)
        //standsoorten toevoegen aan lijst van soort
        //self.standSoortLijst = [food, ...]
    }
}
