import UIKit
import CoreGraphics

/// Stores the static data used to generate the Question Tree in a singleton. lets you build nodes from that data using the
/// buildNode Access point
public struct QTData {
        
    /// the dictionary that contains all the data to load the question Tree for the scam detect feature
    private static var nodeInfo: [String: QTDict] = [:]
     
    /// Loads data from json file to populate nodeInfo dictionary
    static func loadData(){
        QTData.nodeInfo = try! LoadData.loadDict(name: "DictionaryData")
    }
    
    /// builds attempts to build a node from the nodeInfo dictionary. Can optionally accept a parent node to be assigned
    func buildNode(nodeID: (Int, Int), parentNode: QTNode? = nil) -> QTNode? {

        // make sure the entry exists
        guard QTData.nodeInfo["\(nodeID.0).\(nodeID.1)"] != nil else {
            return nil
        }
        /// converted node id into dictionary key
        let key: String = "\(nodeID.0).\(nodeID.1)"
        
        // returns a node built with the information in the dictionary
        return QTNode(
            id: (QTData.nodeInfo[key]!.id[0], QTData.nodeInfo[key]!.id[1]),
            question: QTData.nodeInfo[key]!.question,
            howToFix: QTData.nodeInfo[key]!.howToFix,
            fixImage: QTData.nodeInfo[key]!.fixImage,
            parentNode: parentNode)
    }
}
