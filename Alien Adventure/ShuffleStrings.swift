//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }
        
        if shuffle.characters.count != s1.characters.count + s2.characters.count {
            return false
        }
        
        // MARK: Test s1
        
        var indexS1 = Array<String.CharacterView.Index>()
        for character in s1.characters {
            
            if (!shuffle.containsString(String(character))) {
                return false
            }
            
            for index in shuffle.characters.indices {
                if character == shuffle[index] {
                    indexS1.append(index)
                }
            }
        }
        
        var test1 = shuffle.characters.startIndex
        for value in indexS1 {
            if test1 > value {
                return false
            }
            test1 = value
        }
        
        // MARK: Test s2
        
        var indexS2 = Array<String.CharacterView.Index>()
        for character in s2.characters {
            
            if (!shuffle.containsString(String(character))) {
                return false
            }
            
            for index in shuffle.characters.indices {
                if character == shuffle[index] {
                    indexS2.append(index)
                }
            }
        }
        
        var test2 = shuffle.characters.startIndex
        for value in indexS2 {
            if test2 > value {
                return false
            }
            test2 = value
        }
        
        return true
    }
}
