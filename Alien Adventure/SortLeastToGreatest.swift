//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        
//        MARK: Readable solution
//        let sortedInvetoryByMoreRareAsc = inventory.sort({(item1: UDItem, item2: UDItem) -> Bool in
//            return item1 < item2
//        })
        
        return inventory.sort({$0 < $1})
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"