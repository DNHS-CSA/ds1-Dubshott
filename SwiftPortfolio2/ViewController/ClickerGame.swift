//
//  ClickerGame.swift
//  SwiftPortfolio2
//
//  Created by Abhijay Deevi on 3/27/20.
//  Copyright © 2020 Deevi, Abhijay. All rights reserved.
//

import UIKit
class ClickerController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var moneyclick: UIButton!
    @IBOutlet weak var dollar: UIImageView!
    @IBOutlet weak var money: UILabel!
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        money.text = "0.0"
    }
    
    @IBAction func click(sender: UIButton) {
        let cash = Float(money.text!)
        let moneydisplay = (cash! + 1)
        money.text = String(moneydisplay)
        
        
    
    }
}
