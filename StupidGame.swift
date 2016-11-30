
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
    internal var score : Int
    
    //inits
    init()
    {
        self.discardPile = [PlayingCard]()
        self.winnerPile = [PlayingCard]()
//        self.drawingDeck = UIImage()
        self.hand = [PlayingCard]()
        self.gameDeck = PlayingCardDeck()
        self.score = 0
    }
    
    //Methods
    func startGame() -> Void
    {
        gameDeck.shuffleDeck()
        drawCards()
        
    }
    
    private func drawCards() -> Void
    {
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
    }
    
    
    func checkMatch() -> Bool
    {
        let hasMatch :Bool
        if( hand[0].rank == hand[1].rank ) || (hand[0].suit == hand[1].suit)
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        return hasMatch
    }
    
    func playMatchGame() -> Void
    {
        if gameDeck.cards.count > 0
        {
            if checkMatch()
            {
                score += 5
            }
            else
            {
                score -= 2
            }
        }
        hand.removeAll()
        drawCards()
    }
}