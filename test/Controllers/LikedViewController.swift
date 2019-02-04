//
//  LikedViewController.swift
//  test
//
//  Created by mobapp04 on 01/02/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit

class LikedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    let favorites = Favorite.init()
    @IBOutlet weak var tblFavorites: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.liked.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : LikedTableViewCell = tableView.dequeueReusableCell(withIdentifier: "artistCell") as! LikedTableViewCell
        let favorite = favorites.liked[indexPath.row]
        cell.lblName.text = favorite.bandNaam
        cell.lblSpeelTijd.text = favorite.speelTijd
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bestemming:DetailArtistViewController=segue.destination as! DetailArtistViewController
        let clickedPlace = tblFavorites.indexPathForSelectedRow
        let artist = favorites.liked[clickedPlace!.row]
        bestemming.clickedArtist = artist
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tblFavorites.reloadData()
    }
    
}
