//
//  LikedViewController.swift
//  test
//
//  Created by mobapp04 on 01/02/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit

class LikedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    let dao = DAO.instance
    @IBOutlet weak var tblFavorites: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DAO.instance.favoLijst.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : LikedTableViewCell = tableView.dequeueReusableCell(withIdentifier: "artistCell") as! LikedTableViewCell
        let favorite = dao.favoLijst[indexPath.row]
        cell.lblName.text = favorite.bandNaam
        cell.lblSpeelTijd.text = favorite.speelTijd
        cell.lblSpeelDag.text = favorite.speelDag
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bestemming: DetailFavoViewController = segue.destination as! DetailFavoViewController
        let clickedPlace = tblFavorites.indexPathForSelectedRow
        let artist = dao.favoLijst[clickedPlace!.row]
        bestemming.clickedArtist = artist
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tblFavorites.reloadData()
    }
    
}
