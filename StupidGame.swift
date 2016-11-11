
//
//  StupidGame.swift
//  CardGame
//
//  Created by Williamson, Todd on 11/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class StupidGame
{
    //Declaration section
    internal var score : Int
    internal var discardPile : UIImage
    internal var winnerPile : UIImage
    internal var drawingDeck : UIImage
    internal var hand : UIImage
    
    
    //inits
    init()
    {
        self.score = 0
        self.discardPile = UIImage()
        self.winnerPile = UIImage()
        self.drawingDeck = UIImage()
        self.hand = UIImage()
    }
    
    //Methods
    func startGame() -> Void
    {
        
    }
}