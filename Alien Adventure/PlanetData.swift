//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        var planetNameWithTheMostIntriguingItems = String()
        var planetScoreWithTheMostIntriguingItems = Int()
        
        let planetsJSON = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")!
        let rawPlanetJSON = NSData(contentsOfURL: planetsJSON)!
        
        var planetsArray: [[String: AnyObject]]
        do {
            planetsArray = try! NSJSONSerialization.JSONObjectWithData(rawPlanetJSON, options: NSJSONReadingOptions()) as! [[String: AnyObject]]
        }
        
        for planetDict in planetsArray {
            let planetScore = planetIntriguingScore(planetDict)
            if planetScore > planetScoreWithTheMostIntriguingItems {
                planetNameWithTheMostIntriguingItems = planetDict["Name"] as! String
                planetScoreWithTheMostIntriguingItems = planetScore
            }
        }
        
        return planetNameWithTheMostIntriguingItems
    }
    
    func planetIntriguingScore(planetDictionary: [String: AnyObject]) -> Int {
        var planetScore: Int = 0
        
        if let commonItemsDetected = planetDictionary["CommonItemsDetected"] as? Int {
            planetScore += commonItemsDetected
        }
        if let uncommonItemsDetected = planetDictionary["UncommonItemsDetected"] as? Int {
            planetScore += uncommonItemsDetected * 2
        }
        if let rareItemsDetected = planetDictionary["RareItemsDetected"] as? Int {
            planetScore += rareItemsDetected * 3
        }
        if let legendaryItemsDetected = planetDictionary["LegendaryItemsDetected"] as? Int {
            planetScore += legendaryItemsDetected * 4
        }
        
        return planetScore
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"