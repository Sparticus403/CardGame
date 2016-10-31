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
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
        
    }
    
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    private var color : UIColor
    {
        get
        {
           return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    private var frontImage : UIImage
    {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    }
    override init()
    {
        super.init()
        //frontImage = UIImage(named: "")!
        color = UIColor.redColor()
        rank = 0
        suit = String()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        //frontImage = UIImage(named: "")!
        color = UIColor.redColor()
        
        rank = withRank
        suit = ofSuit
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
        
        
        
        let description = "This playing card has a value of \(rank) a color of \(color), the back image is \(self.getBackImage)and is of the \(suit) suit \(facing)"
        return description
        
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
    
    // The modifier 'class' in front of the func means that this method is visible without creatng an instance of the class in question.
    // This is a class method, not an isnstance method.
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func validSuits() -> [String]
    {
        return ["♥️","♠️","♦️","♣️"]
    }
    
}
