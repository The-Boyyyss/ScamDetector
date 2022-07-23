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
    
    // Function used to load json content into dictionary and return that dictionary
    static func loadDict(name: String) -> [String: QTDict] {
        // path to json file
        var nodeInfo = [String: QTDict]()
        
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                // load data
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
                // Json decoder to return array of data.
                let results = try JSONDecoder().decode([String : QTDict].self, from: data)
                nodeInfo = results
            } catch {
                
                // return empty erray if any error happens.
                return[:]
            }
        }
        
        return nodeInfo
    }
}

// Refrence: https://www.youtube.com/watch?v=EycwLxTU-EA&t=258s
