//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var bannedItemIds = [Int]()
        let bannedItemWord = "Laser"
        let minimumCarbonAge = 30
        
        let itemPlist = NSBundle.mainBundle().URLForResource("ItemList", withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: itemPlist) as! [[String: AnyObject]]
        
        for item in itemArray {
            if let itemId = item["ItemID"] as? Int,
                    let name = item["Name"] as? String where name.lowercaseString.containsString(bannedItemWord.lowercaseString),
                    let historicalData = item["HistoricalData"] as? [String: AnyObject],
                    let carbonAge = historicalData["CarbonAge"] as? Int where carbonAge < minimumCarbonAge {
                bannedItemIds.append(itemId)
            }
        }
        
        return bannedItemIds
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"