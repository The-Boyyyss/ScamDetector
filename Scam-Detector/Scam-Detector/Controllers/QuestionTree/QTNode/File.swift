import Foundation
import CoreGraphics

/**
 Tree  Node Data Node for storing the questions and accomapnying data that makes up the scam detect feature
 
 - Parameter question: The question to be given to the user
 - Parameter parentNode: The QTNode that led to this question node
 - Parameter howToFix: The steps you can take to fix the problem that occurs if you answer yes to this question
 - Parameter Tips: The Repsonse Tips for each corrisponding answer. Must match the index order of the children nodes (max 3). Ex. index 0 is when a user selects yes, 1 for no.
 - Parameter childrenNodes: Nodes that contain all possible answers to this question (max 3)
*/
class Test: Codable {
    
    /// unique idetifier used to represent the node and it's depth in the tree
    let id: [Int]
    /// The question to be given to the user
    let question: String
    /// The steps you can take to fix the problem that occurs if you answer yes to this question
    let howToFix: String
    
    init () {
        self.id = [0, 0]
        self.question = "ERROR"
        self.howToFix = ""
    }
    
    init(id: [Int], question: String = "", howToFix: String = "") {
        self.id = id
        self.question = question
        self.howToFix = howToFix
    }
}
