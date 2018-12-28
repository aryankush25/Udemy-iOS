//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Aryan Agarwal on 29/12/18.
//  Copyright © 2018 Aryan Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomeNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomeImage()
        
    }

    @IBAction func AskMeAnything(_ sender: UIButton) {
        
        randomeImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        randomeImage()
        
    }
    
    func randomeImage() {
        
        randomeNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: imageArray[randomeNumber])
        
    }
    
}

