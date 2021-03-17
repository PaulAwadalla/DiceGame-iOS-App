//
//  ViewController.swift
//  DiceApp
//
//  Created by Paul Awadalla on 4/24/19.
//  Copyright © 2019 Paul Awadalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3" , "dice4", "dice5", "dice6"]
    
    var randomDiceIndexOne: Int = 0
    var randomDiceIndexTwo: Int = 0
    
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var DiceImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollingDicesImages()
    }

    @IBAction func rollBtn(_ sender: UIButton) {
        rollingDicesImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollingDicesImages()
    }
    
    
    func rollingDicesImages(){
        randomDiceIndexOne = Int.random(in: 0 ... 5)
        randomDiceIndexTwo = Int.random(in: 0 ... 5)
        
        
        diceImageOne.image = UIImage(named: diceArray[randomDiceIndexOne])
        DiceImageTwo.image = UIImage(named: diceArray[randomDiceIndexTwo])
    }
    
}

