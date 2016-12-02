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
    
    private lazy var currentDeck = PlayingCardDeck()
    private lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        
    }
    @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "The card has been clicked \(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardLabel.text = "The deck was exhausted"
            self.currentDeck = PlayingCardDeck()
        }
    }
    @IBAction func flipCard2(sender: UIButton)
    {
        clickCount += 1
        
        if let currentCard = currentDeck.drawCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardLabel.text = "The deck was exhausted"
            self.currentDeck = PlayingCardDeck()
        }
    }
}