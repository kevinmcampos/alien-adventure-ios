//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var charCountDict = [Character: Int]()
        
        for item in inventory {
            for char in item.name.lowercaseString.characters {
                if let charCount = charCountDict[char] {
                    charCountDict[char] = charCount + 1
                } else {
                    charCountDict[char] = 1
                }
            }
        }
        
        var mostCommonChar: Character?
        var mostCommonCharCount: Int = 0
        for charCountPair in charCountDict {
            let charName = charCountPair.0
            let charCount = charCountPair.1
            if charCount > mostCommonCharCount {
                mostCommonChar = charName
                mostCommonCharCount = charCount
            }
        }
        
        return mostCommonChar
    }
}
