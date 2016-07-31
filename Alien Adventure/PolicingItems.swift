//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var policedItems = [UDPolicingError.NameContainsLaser: 0, UDPolicingError.ItemFromCunia: 0, UDPolicingError.ValueLessThan10: 0]
        
        for item in inventory {
            do {
                try policingFilter(item)
            } catch UDPolicingError.NameContainsLaser {
                policedItems[.NameContainsLaser]! += 1
            } catch UDPolicingError.ItemFromCunia {
                policedItems[.ItemFromCunia]! += 1
            } catch UDPolicingError.ValueLessThan10 {
                policedItems[.ValueLessThan10]! += 1
            } catch {
                print("Something is wrong")
            }
        }
        
        return policedItems
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"