//
//  PlayingCard.swift
//  CardGame
//
//  Created by Williamson, Todd on 10/25/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    
    override init()
    {
        
        self.color = UIColor.red
        self.rank = 0
        self.suit = String()
        super.init()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        
        color = UIColor.red
        
        rank = withRank
        suit = ofSuit
        super.init()
    }
    
    override func toString() -> String
    {
        let facing : String
        if self.isUp()
        {
            facing = "is facing up."
        }
        else
        {
            facing = "is facing down."
        }
        
        
        
        let description = "This playing card has a value of \(rank) a color of \(color), and is of the \(suit) suit \(facing)"
        return description
        
    }
    
    func getCardData() -> String
    {
        let data = "\(PlayingCard.validRanks()[rank]) \(suit)"
        return data
    }
//    //java style getters/setters
//    func getRank() -> Int
//    {
//        return self.rank
//    }
//    func setRank(rank : Int)
//    {
//        self.rank = rank
//    }
//    
    // The modifier 'class' in front of the func means that this method is visible without creatng an instance of the class in question.
    // This is a class method, not an isnstance method.
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♥️","♠️","♦️","♣️"]
    }
    
}
