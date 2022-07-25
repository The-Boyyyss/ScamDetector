import Foundation

///A singleton of the Question Tree used to navigate through the scam detect feature
struct QuestionTree {
    
    /// static instance of Question Tree for accessing it's functions and variables
    static var instance = QuestionTree()
    
    /// The top most node of the tree
    let parentNode: QTNode
    /// The last node you accessed in the tree
    var currentNode: QTNode
    
    init() {
        // create an instance of our data object to load our tree
        let data: QTData = QTData()
        // assign the parent node and current node
        parentNode = data.buildNode(nodeID: (1,1), parentNode: nil)!
        currentNode = parentNode
        
        // build tree using data
        self.build(node: parentNode, data: data)
    }
    
    /// sets the current node to the node that corrisponds to the answer at the given index or throws an error if that index is out of range
    mutating func answerQuestion(givenAnswer: ScamDetectAnswer) throws -> QTNode {
        
        // there should be children to traverse too otherwise throw an error
        guard currentNode.childrenNodes != nil && currentNode.childrenNodes?.child1 != nil && currentNode.childrenNodes?.child2 != nil else {
            throw QTErrors.NoChildAtIndex
        }
        // determine which node to travel too
        if (givenAnswer == ScamDetectAnswer.Yes) {
            currentNode = currentNode.childrenNodes!.child1!
        }
        else {
            currentNode = currentNode.childrenNodes!.child2!
        }
        
        return currentNode
    }
    
    /// resets tree to parent node
    mutating func reset() -> QTNode {
        
        currentNode = parentNode
        
        return currentNode
    }
    
    /// returns to the previous question node if not at the parent
    mutating func previousQuestion() throws {
        
        guard currentNode.parentNode != nil else {
            
            throw QTErrors.NoNodeAboveParent
        }
        
        currentNode = currentNode.parentNode!
    }
    
    /// Populates the question tree recursively
    private mutating func build(node: QTNode, data: QTData) {
        
        /// creates the children for the given node if there are any.
        let children: QTNodeChildren? = createChildren(currentNode: node, data: data)
        
        // make sure there are children to create
        guard children != nil else {
            
            return
        }
        // assign the children to the node
        node.childrenNodes = children
        
        // recursivly calls build on each child after checking they exist
        if (node.childrenNodes!.child1 != nil) {
            self.build(node: node.childrenNodes!.child1!, data: data)
        }
        if (node.childrenNodes!.child2 != nil) {
            self.build(node: node.childrenNodes!.child2!, data: data)
        }
                
        return
    }
    
    /// creates the child nodes for the given node if there are any.
    ///  note uses calculates first childs, second half of id using (second-Half-Of-ID * 2) -1
    ///  ie. 3.1's children are 4.1, 4.2 . ie  (1*2)-1 = 1 &  (1*2) = 2..
    ///  so ->  3.2's children will be 4.3 and 4.4  ie 4.((2*2)-1) and 4.((2*2))
    private func createChildren(currentNode: QTNode, data: QTData) -> QTNodeChildren {
        
        return QTNodeChildren(
            child1: data.buildNode(
                nodeID: (currentNode.id.0 + 1, (currentNode.id.1 * 2) - 1),
                parentNode: currentNode),
            child2: data.buildNode(
                nodeID: (currentNode.id.0 + 1, (currentNode.id.1 * 2)),
                parentNode: currentNode))
    }
}
