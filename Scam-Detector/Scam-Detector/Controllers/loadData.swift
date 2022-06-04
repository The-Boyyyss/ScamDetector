//
//  loadData.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-06-03.
//


import Foundation

class loadData {
    static func load<T: Codable>(name:String) -> [T] {
        
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let results = try JSONDecoder().decode([T].self, from: data)
                return results
            } catch {
                return[]
            }
        }
        return[]
    }
}

// Refrence: https://www.youtube.com/watch?v=EycwLxTU-EA&t=258s
