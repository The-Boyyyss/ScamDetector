import Foundation

/// an enum of errors that can be thrown in QTNodes
enum QTErrors: Error {
    /// Occurs when you attempt to add more than 3 children nodes or tips to a QTNode
    case TooManyChildren
    /// occurs when you attempt to access a child node at an index that does not exist
    case NoChildAtIndex
    /// occurs when attempting to go above the parent node
    case NoNodeAboveParent
    /// occcurs when dictionary tries to load but the data isn't found
    case DictionaryDataLoadFailed
}
