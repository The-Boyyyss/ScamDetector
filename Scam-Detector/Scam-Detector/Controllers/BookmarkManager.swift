//
//  BookmarkManager.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-06-06.
//

import Foundation

/// Manager class for Bookmarks
class BookmarkManager: ObservableObject {
    /// Bookmarked Results
    @Published var bookmarkedResults: [Result]{
        didSet{
//            if let bookmarked = try? JSONEncoder().encode(bookmarkedResults){
//                UserDefaults.standard.set(bookmarked, forKey: StorageKeys.bookmarkedResults.rawValue)
//            }
            bookmarkedResults.sort{ $0.date > $1.date }
            if bookmarkedResults.count > 6 {
                bookmarkedResults.removeLast()
            }
        }
    }
    
    init(){
//        if let data = UserDefaults.standard.data(forKey: StorageKeys.bookmarkedResults.rawValue){
//            let bookmarked = try? JSONDecoder().decode([Result].self, from: data)
//            self.bookmarkedResults = bookmarked ?? []
//        }
//        else {
//            self.bookmarkedResults = []
//        }
        let question1 = Question(idOne: 1, idTwo: 1)
        let question2 = Question(idOne: 2, idTwo: 2)
        let question3 = Question(idOne: 3, idTwo: 3)
        let question4 = Question(idOne: 4, idTwo: 4)
        let question5 = Question(idOne: 5, idTwo: 5)
        let result1 = Result(id: 1, questions: [question1, question3, question4], date: Date.now, isAScam: true)
        let result2 = Result(id: 1, questions: [question1, question2, question5], date: Date.now, isAScam: true)
        let result3 = Result(id: 1, questions: [question1, question4, question5], date: Date.now, isAScam: false)
        
        self.bookmarkedResults = [result1, result2, result3, result1, result2, result3, result3]
    }
}

/// REFERENCES
/// USER DEFAULTS https://www.simpleswiftguide.com/how-to-use-userdefaults-in-swiftui/
