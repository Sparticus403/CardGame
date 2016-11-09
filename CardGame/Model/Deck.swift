//
//  Deck.swift
//  CardGame
//
//  Created by Williamson, Todd on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        var tempDeck = [Card]()
        while cards.count > 0
        {
            //Chooses a valid random index in the range of 0 to cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            //Removes card from that spot from the dec. The deck decreases in count.
            let removedCard = cards.removeAtIndex(randomSpot)
            //puts the removed card into tempDeck
            tempDeck.append(removedCard)
        }
        cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card!
    {
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card!
    {
        
    }
}