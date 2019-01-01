//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
//    var noteArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7",]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let note = "note\(sender.tag)"
        
        playAudio(note: note)
    }
    
    func playAudio(note : String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

