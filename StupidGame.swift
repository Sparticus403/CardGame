
//
//  StupidGame.swift
//  CardGame
//
//  Created by Williamson, Todd on 11/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class StupidGame
{
    //Declaration section
//    internal var score : Int
    internal var discardPile : [PlayingCard]
    internal var winnerPile : [PlayingCard]
//    internal var drawingDeck : UIImage
    internal var hand : [PlayingCard]
    internal var gameDeck : PlayingCardDeck
    
    //inits
    init()
    {
//        self.score = 0
        self.discardPile = [PlayingCard]
        self.winnerPile = [PlayingCard]
//        self.drawingDeck = UIImage()
        self.hand = [PlayingCard]()
        self.gameDeck = PlayingCardDeck()
    }
    
    //Methods
    func startGame() -> Void
    {
        gameDeck.shuffleDeck()
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        
    }
}