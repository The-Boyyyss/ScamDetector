/*
 This page includes function to load data from json file for more info pages.
 */

import Foundation
// This model loads data from JSON file. 
class LoadData {
    
    // Function used to load json content into model and return data as array of objects.
    static func load<T: Decodable>(name:String) -> [T] {
        
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
    
    static func loadDict(name: String) -> [String: QTDict] {
        // path to json file
        var nodeInfo = [String: QTDict]()
        print("HERE?")
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                // load data
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
                // Json decoder to return array of data.
                let json = try JSONSerialization.jsonObject(with: data)
                if let results = json as? [String: QTDict] {
                    print(results)
                    return results
                }
                else if let results = json as? [Any] {
                    for node in results as! [Dictionary<String, AnyObject>]{
                        let qtId = node[""] as! [Int]
                        let question = node[""] as! String
                        let howToFix = node[""] as! String
                        let qtDict = QTDict(id: qtId, question: question, howToFix: howToFix)
                        nodeInfo[qtDict.idToString()] = qtDict
                    }
                }
            } catch {
                // return empty erray if any error happens.
                print("HEEEERE")
                return[:]
            }
        }
        print(nodeInfo)
        return[:]
    }
}

// Refrence: https://www.youtube.com/watch?v=EycwLxTU-EA&t=258s
