//
//  DetailArtistViewController.swift
//  test
//
//  Created by mobapp04 on 31/01/2019.
//  Copyright © 2019 mobapp04. All rights reserved.
//

import UIKit
import AVFoundation

//var songs:[String] = []
var audioPlayer = AVAudioPlayer()

class DetailArtistViewController: UIViewController {

    @IBOutlet weak var lblArtistName: UILabel!
    @IBOutlet weak var tvBand: UITextView!
    @IBOutlet weak var imageBand: UIImageView!
    @IBOutlet weak var btnFavorite: UIButton!
    var clickedArtist:Artist?
    
    //PLAYER
    @IBOutlet weak var lblSongTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lblArtistName.text = clickedArtist!.bandNaam
        tvBand.text = "Deze band bestaat uit: \(clickedArtist!.bandLeden!). \nCHECK IT OUT BELOW!"
        imageBand.image = UIImage.init(named: clickedArtist!.afbeeldingsNaam!)
        if clickedArtist?.isFavorite==true{
            btnFavorite.tintColor = UIColor.red
        }else{btnFavorite.tintColor = UIColor.darkGray}
        
        lblSongTitle.text = clickedArtist!.song
        
        //PREPARE SONG FOR PLAYING
        do{
            let stringSong:String = clickedArtist!.song!
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(stringSong)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
    }

    
    @IBAction func btnFavorite(_ sender: Any) {
        for dag in DAO.instance.playtimeLijst!{
            for info in dag.artistLijst {
                if clickedArtist === info{
                    info.isFavorite = !info.isFavorite!
                    if info.isFavorite! {
                        btnFavorite.tintColor = UIColor.red
                    }else{
                        btnFavorite.tintColor = UIColor.darkGray
                    }
                }
            }
    }

}
    
    //PLAYER
    @IBAction func btnPlay(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func btnPause(_ sender: Any) {
        if audioPlayer.isPlaying{
            audioPlayer.pause()
        }
    }
    
    @IBAction func btnStop(_ sender: Any) {
        if audioPlayer.isPlaying{
            audioPlayer.currentTime = 0
        }else{audioPlayer.play()}
    }
    
    @IBAction func sliderSong(_ sender: UISlider) {
        audioPlayer.volume = sender.value
        //1 == max volume 0 == mute
    }
}
