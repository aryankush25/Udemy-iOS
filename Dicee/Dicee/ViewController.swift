//
//  ViewController.swift
//  Dicee
//
//  Created by Aryan Agarwal on 28/12/18.
//  Copyright © 2018 Aryan Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomeDiceIndex1 : Int = 0
    var randomeDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        randomeDiceIndex1 = Int.random(in: 0 ... 5)
        randomeDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomeDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomeDiceIndex2])
        
        //        diceImageView1.image = UIImage(named: "dice\(randomeDiceIndex1 + 1)")
        //        diceImageView2.image = UIImage(named: "dice\(randomeDiceIndex2 + 1)")
        
        print(randomeDiceIndex1)
        print(randomeDiceIndex2)
    }
    
}

