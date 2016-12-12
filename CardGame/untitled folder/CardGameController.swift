//
//  CardGameController.swift
//  CardGame
//
//  Created by Williamson, Todd on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton2: UIButton!
    
    fileprivate lazy var currentDeck = PlayingCardDeck()
    fileprivate lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        
    }
    @IBAction func flipCard(_ sender: UIButton)
    {
        clickCount += 1
        let words = "The card has been clicked \(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", for: UIControlState())
        }
        else
        {
            cardLabel.text = "The deck was exhausted"
            self.currentDeck = PlayingCardDeck()
        }
    }
    @IBAction func flipCard2(_ sender: UIButton)
    {
        clickCount += 1
        
        if let currentCard = currentDeck.drawCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", for: UIControlState())
        }
        else
        {
            cardLabel.text = "The deck was exhausted"
            self.currentDeck = PlayingCardDeck()
        }
    }
}
