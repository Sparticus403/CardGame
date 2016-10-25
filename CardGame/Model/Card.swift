//
//  Card.swift
//  CardGame
//
//  Created by Williamson, Todd on 10/25/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class Card
{
    private var backImage : UIImage
    
    private var isFaceUp : Bool
    
    init()
    {
        backImage = UIImage()
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
}