//
//  DataService.swift
//  Lesson 6 Challenge
//
//  Created by Mateusz Potępa on 19/02/2023.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Person] {
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "Lesson 16", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Person]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let personData = try decoder.decode([Person].self, from: data)
                // Add the unique IDs
                for r in personData {
                    r.id = UUID()
                    
                }
                
                
                // Return the persons
                return personData
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
        
        return [Person]()
    }
}

