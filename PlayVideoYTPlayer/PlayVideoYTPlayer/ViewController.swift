//
//  ViewController.swift
//  PlayVideoYTPlayer
//
//  Created by Sainath Bamen on 13/06/23.
//

import UIKit
import YoutubePlayer_in_WKWebView

class ViewController: UIViewController {

    @IBOutlet weak var myPlayer: WKYTPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myPlayer.load(withVideoId: "https://youtu.be/Jlj0wc3USrU")
        myPlayer.playVideo()
        
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        myPlayer.stopVideo()
    }


}

extension ViewController: WKYTPlayerViewDelegate{
    func playerViewDidBecomeReady(_ playerView: WKYTPlayerView) {
        playerView.playVideo()
    }
}
