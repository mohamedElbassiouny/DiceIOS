//
//  ViewController.swift
//  Dice
//
//  Created by Mohamed Elbassiouny on 7/8/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var diceArray = ["  -1" , "dice-2" , "dice-3" , "dice-4" , "dice-5" ,"dice-6" ]
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        randomDiceIndex1 = Int.random(in: 1 ... 5)
        randomDiceIndex2 = Int.random(in: 1 ... 5)
        
    
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1 ])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2 ])

    }
    
}

