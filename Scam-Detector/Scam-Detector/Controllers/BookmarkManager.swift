import Foundation
import SwiftUI

/// Manager class for Bookmarks
class BookmarkManager: ObservableObject {
    
    /// Bookmarked Results
    @Published var bookmarkedResults: [Result]{
        didSet{
            if let bookmarked = try? JSONEncoder().encode(bookmarkedResults){
                UserDefaults.standard.set(bookmarked, forKey: StorageKeys.bookmarkedResults.rawValue)
            }
            if bookmarkedResults.count > 6 {
                bookmarkedResults.removeLast()
            }
        }
    }
    
    /// BookmarkManager constructor. Loads data from localstorage
    init(){
        if let data = UserDefaults.standard.data(forKey: StorageKeys.bookmarkedResults.rawValue){
            let bookmarked = try? JSONDecoder().decode([Result].self, from: data)
            self.bookmarkedResults = bookmarked ?? []
        }
        else {
            self.bookmarkedResults = []
        }
    }
    
    /// Convert results object to qtnode
    func toQTNode(result: Result) -> [QTNode]{
        let data: QTData = QTData()
        var qtNodeArray: [QTNode] = []
        for q in result.questions {
            let qtNode = data.buildNode(nodeID: (q.idOne, q.idTwo))
            qtNodeArray.append(qtNode!)
        }
        
        return qtNodeArray
    }
    
    /// Adds a new result to bookmarks
    func addResultToHistory(qtNodes: [QTNode], isAScam: Bool){
        var questions: [Question] = []
        for q in qtNodes {
            let question = Question(idOne: q.id.0, idTwo: q.id.1)
            questions.append(question)
        }
        self.bookmarkedResults.insert(Result(questions: questions, date: Date.now, isAScam: isAScam), at: 0)
    }
}

/// REFERENCES
/// USER DEFAULTS https://www.simpleswiftguide.com/how-to-use-userdefaults-in-swiftui/
