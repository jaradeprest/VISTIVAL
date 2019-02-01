//
//  ViewController.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    let dao = DAO.init()
    @IBOutlet weak var tblArtist: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return dao.playtimeLijst!.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dao.playtimeLijst![section].artistLijst.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dao.playtimeLijst![section].speelTijd
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let artistCell : ArtistTableViewCell = tableView.dequeueReusableCell(withIdentifier: "artistCell") as! ArtistTableViewCell
        let artist = dao.playtimeLijst![indexPath.section].artistLijst[indexPath.row]
        artistCell.lblName.text = artist.bandNaam
        artistCell.lblTime.text = artist.speelTijd
        return artistCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bestemming:DetailArtistViewController=segue.destination as! DetailArtistViewController
        let clickedPlace = tblArtist.indexPathForSelectedRow
        let artist = dao.playtimeLijst![clickedPlace!.section].artistLijst[clickedPlace!.row]
        bestemming.clickedArtist = artist
    }
    
}

