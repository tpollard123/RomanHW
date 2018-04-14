//
//  FourthViewController.swift
//  hw9-multiview
//
//  Created by Tyla Pollard on 4/4/18.
//  Copyright © 2018 spelman. All rights reserved.
//

import UIKit
import AVKit

class FourthViewController: UIViewController {

    @IBOutlet weak var viewMovie: UIView!
    //actions for the rewind
    @IBAction func startTouch(_ sender: Any) {
        avPlayerController.player?.play()
    }
    
    @IBAction func pauseTouch(_ sender: Any) {
        avPlayerController.player?.pause()
    }
    
    
    @IBAction func rewinTouch(_ sender: Any) {
        //restart at the beginning
        avPlayerController.player?.seek(to: CMTimeMake(0, 1))
    }
    
    
    
    var avPlayerController:AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //instantiate the A/V player
        avPlayerController = AVPlayerViewController()
        
        let urlString = "https://github.com/tpollard123/test/raw/master/RomanNumerals.mp4"
        
        //if the url is not nil then unwrap it and assign to movie url
        if let MovieUrl = URL(string: urlString)
        {
            //create a player object
            avPlayerController.player = AVPlayer(url: MovieUrl)
            
            //specify the width and height of the view we will use to display the movie
            avPlayerController.view.frame = CGRect(x: 0, y: 0, width: viewMovie.bounds.width, height: viewMovie.bounds.height)
            
            //specify whether or not we want playback controls displayed
            avPlayerController.showsPlaybackControls = false //can change to true if want both controls to show
            
            //Add the PlayerController view as a subview of the UIView used to display the movie
            viewMovie.addSubview(avPlayerController.view)
            
            /*play the movie
            avPlayerController.player?.play()
            */
        }       // if let MovieUrl
        else
        {
            // the URL was bad!
            print("bad URL for \(urlString)")
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
