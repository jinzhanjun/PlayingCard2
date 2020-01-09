//
//  ViewController.swift
//  PlayingCard2
//
//  Created by jinzhanjun on 2019/12/26.
//  Copyright © 2019 jinzhanjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var playingCards = [CardModel]()
        
        for suit in CardModel.Suit.all {
            for numic in CardModel.Numic.all {
                playingCards.append(CardModel(suit: suit, numic: numic))
                print(CardModel(suit: suit, numic: numic))
            }
        }

    }
}

