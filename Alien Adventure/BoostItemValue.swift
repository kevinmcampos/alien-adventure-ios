//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
        
//        MARK: Readable solution
//        let inventoryBoosted = inventory.map({(item: UDItem) -> UDItem in
//            return UDItem(itemID: item.itemID, itemType: item.itemType, name: item.name, baseValue: item.baseValue + 100, inscription: item.inscription, rarity: item.rarity, historicalData: item.historicalData)
//        })
        
//        MARK: One-line confusing solution
        return inventory.map({UDItem(itemID: $0.itemID, itemType: $0.itemType, name: $0.name, baseValue: $0.baseValue + 100, inscription: $0.inscription, rarity: $0.rarity, historicalData: $0.historicalData)})
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"