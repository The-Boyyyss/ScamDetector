//
//  loadData.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-06-03.
//

/*
 This page includes function to load data from json file for more info pages.
 */

import Foundation

class LoadData {
    
    // Function used to load json content into model and return data as array of objects.
    static func load<T: Codable>(name:String) -> [T] {
        
        // path to json file
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                // load data
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                // Json decoder to return array of data.
                let results = try JSONDecoder().decode([T].self, from: data)
                return results
            } catch {
                // return empty erray if any error happens.
                return[]
            }
        }
        return[]
    }
}

// Refrence: https://www.youtube.com/watch?v=EycwLxTU-EA&t=258s
