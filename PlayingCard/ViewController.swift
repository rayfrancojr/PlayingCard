//
//  ViewController.swift
//  PlayingCard
//
//  Created by Raphael A Franco on 8/21/18.
//  Copyright © 2018 Eleix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Testing")
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
            
        }
    }


}

