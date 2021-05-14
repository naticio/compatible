//
//  DataService.swift
//  Compatible
//
//  Created by Nat-Serrano on 5/13/21.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Zodiac] {
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "Zodiac", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Zodiac]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let zodiacData = try decoder.decode([Zodiac].self, from: data)
                
                // Add the unique IDs
                for r in zodiacData {
                    r.id = UUID()
                }
                
                // Return the recipes
                return zodiacData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }
        
        return [Zodiac]()
    }
    
}
