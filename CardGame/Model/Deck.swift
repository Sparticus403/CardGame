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
        //creates a temporary array to hold the card objects
        var tempDeck = [Card]()
        
        //repeats until there are no cards in self.cards
        while self.cards.count > 0
        {
            //Chooses a valid random index in the range of 0 to cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            
            //Removes card from that spot from the dec. The deck decreases in count.
            let removedCard = self.cards.remove(at: randomSpot)
            
            //puts the removed card into tempDeck
            tempDeck.append(removedCard)
        }
        //replaces the state deck with the temporary deck
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.remove(at: 0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.remove(at: randomIndex)
        }
        else
        {
            return nil
        }
    }
}
