//
//  ViewController.swift
//  Find My Restroom
//
//  Created by Ethan Yu on 8/4/20.
//  Copyright © 2020 Ethan Yu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sound = Bundle.main.path(forResource: "flushing", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!)) //helper function to call sound file
        }
        catch {
            print(error)
        }
    }
    
    @IBAction func goToNextViewOnTap(_ sender: Any) {
        audioPlayer.play()  //plays sound
        performSegue(withIdentifier: "FirstToSecondView", sender: self) //goes to next view controller
    }
    
}

