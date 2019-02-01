//
//  StandsViewController.swift
//  test
//
//  Created by mobapp04 on 01/02/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit

class StandsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let dao = DAO.init()
    @IBOutlet weak var tblStands: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return dao.standSoortLijst!.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dao.standSoortLijst![section].standLijst.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dao.standSoortLijst![section].naam
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let standCell : StandTableViewCell = tableView.dequeueReusableCell(withIdentifier: "standCell") as! StandTableViewCell
        let stand = dao.standSoortLijst![indexPath.section].standLijst[indexPath.row]
        standCell.lblStandName.text = stand.standNaam
        standCell.imageStand.image = UIImage.init(named: stand.afbeeldingStandNaam!)
        return standCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bestemming:DetailStandViewController=segue.destination as! DetailStandViewController
        let clickedPlace = tblStands.indexPathForSelectedRow
        let stand = dao.standSoortLijst![clickedPlace!.section].standLijst[clickedPlace!.row]
        bestemming.clickedStand = stand
    }
    
}
