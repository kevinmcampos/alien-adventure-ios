//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var commonCount = 0, uncommonCount = 0, rareCount = 0, legendaryCount = 0
        
        for item in inventory {
            switch item.rarity {
                case .Common:
                    commonCount += 1
                case .Uncommon:
                    uncommonCount += 1
                case .Rare:
                    rareCount += 1
                case .Legendary:
                    legendaryCount += 1
            }
        }
        
        return [UDItemRarity.Common: commonCount, UDItemRarity.Uncommon: uncommonCount, UDItemRarity.Rare: rareCount, UDItemRarity.Legendary: legendaryCount]
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"