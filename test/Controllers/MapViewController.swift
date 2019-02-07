//
//  MapViewController.swift
//  test
//
//  Created by mobapp04 on 01/02/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController,  MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapKaart: MKMapView!
    var pins:[myPin] = [myPin]()
    var myLocationManager:CLLocationManager = CLLocationManager() /*voor huidige locatie*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLocationManager.delegate = self
        myLocationManager.requestWhenInUseAuthorization()
        myLocationManager.desiredAccuracy = kCLLocationAccuracyBest

        let podium = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.15299, longitude: 2.721468), title: "Podium", subtitle: "Optredens!", afb: UIImage.init(named: "sfeer1.jpg")!)
        let yoga = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151368, longitude: 2.720491), title: "Yoga", subtitle: "Les om 18:00-19:00 en 20:00-21:00.", afb: UIImage.init(named: "yoga2.jpg")!)
        let fitness = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151987, longitude: 2.722599), title: "Fitness", subtitle: "Fitnesstoestellen ter beschikking heel het weekend!", afb: UIImage.init(named: "workout.jpg")!)
        let surf = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.153138, longitude: 2.720883), title: "Surflessen", subtitle: "Surfles zaterdag van 17:00-19:00", afb: UIImage.init(named: "surf3.jpg")!)
        let dans = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151839, longitude: 2.721961), title: "Dansles", subtitle: "Dans van 20:00-22:00.", afb: UIImage.init(named: "dans.jpg")!)
        let burger = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151718, longitude: 2.721366), title: "Voor de regionale BURGER", subtitle: "Lekker en niet gezond.", afb: UIImage.init(named: "burger.jpg")!)
        let loempia = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151664 , longitude: 2.721183), title: "Oempa Loempia", subtitle: "Meer dan een gewone loempia!", afb: UIImage.init(named: "loempia.jpg")!)
        let frituur = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151536, longitude: 2.720867), title: "De Puntzak", subtitle: "Je favoriete soort zak ;)", afb: UIImage.init(named: "friet.jpg")!)
        let bar = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.15153, longitude: 2.71952), title: "Bar Bier", subtitle: "BIER HIER BIER HIER!", afb: UIImage.init(named: "bar.jpg")!)
        let cocktail = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.15123, longitude: 2.71952), title: "Cocktail Bar", subtitle: "Overprised, maar oversized!", afb: UIImage.init(named: "cocktail.jpg")!)
        let champagn = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.15231, longitude: 2.72261), title: "BIG SPENDERS", subtitle: "Betalen kan enkel met briefjes van €200", afb: UIImage.init(named: "champagnbar.jpg")!)
        let market = myPin.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151455, longitude: 2.720679), title: "Sea Market", subtitle: "Een onderbroek, een tent, maar ook armbandjes!", afb: UIImage.init(named: "market.jpg")!)
        
        
        
        //add to list
        pins += [podium, yoga, fitness, surf, dans, burger, loempia, frituur, bar, cocktail, champagn, market]
        //add to map
        mapKaart.addAnnotations(pins)
        
        //zoom to location
        let viewRegion = MKCoordinateRegion(center: CLLocationCoordinate2D.init(latitude: 51.151718, longitude: 2.721366), latitudinalMeters: 300, longitudinalMeters: 300)
        mapKaart.setRegion(viewRegion, animated: false)
    }
    //POP UP BIJ PINS
    // !!!! inkorten van subtitles!!!!!!! in beschrijving zetten bij popup
    
    
    
    //segmenter controller map
    @IBAction func mapKind(_ sender: UISegmentedControl) {
        let gekozen = sender.selectedSegmentIndex
        switch gekozen {
        case 0: mapKaart.mapType = .standard
        default: mapKaart.mapType = .satellite
        }
    }
    
    //welke toestemming gaf gebruiker?
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if(status == .authorizedWhenInUse){
            //starten met locatie te updaten
            myLocationManager.startUpdatingLocation()
            //locatie van gebruiker tonen op kaart
            mapKaart.showsUserLocation = true
        }
        if(status == .denied){
            //Ge moogt niet
        }
        if(status == .notDetermined){
            //gebruiker heeft nog niets ingesteld
            myLocationManager.requestWhenInUseAuthorization()
            
        }
    }

    //OPMAAK PIN
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let myPin = annotation as? myPin
        let customView = MKPinAnnotationView.init(annotation: myPin, reuseIdentifier: "Pin")
        customView.pinTintColor = UIColor.init(red: 120/180, green: 20/180, blue: 180/180, alpha: 1)
        customView.canShowCallout = true
        
        //afbeelding in callout + font aangepast van subtitle
        let scale = CGRect.init(x: 0, y: 0, width: 50, height: 50)
        let viewAfb = UIImageView.init(frame: scale)
        let scale2 = CGRect.init(x: 10, y: 10, width: 200, height: 50)
        let subtitle = UITextField.init(frame: scale2)
        viewAfb.image = myPin!.afb
        subtitle.text = myPin!.subtitle
        subtitle.font = UIFont.italicSystemFont(ofSize: 10)
        subtitle.adjustsFontForContentSizeCategory = true
        customView.leftCalloutAccessoryView = viewAfb
        customView.detailCalloutAccessoryView = subtitle
        
        return customView
    }
    
}

