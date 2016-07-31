//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        
        for x in UInt8.min..<UInt8.max {
            
            var decrypted = [UInt8]()
            
            for character in encryptedString {
                decrypted.append(character ^ x)
            }
            
            if let decryptedString = String(bytes: decrypted, encoding: NSUTF8StringEncoding) where decryptedString == "udacity" {
                return x
            }
        }
        
        return 0
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"