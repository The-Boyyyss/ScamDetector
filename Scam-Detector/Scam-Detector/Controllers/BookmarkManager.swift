//
//  BookmarkManager.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-06-06.
//

import Foundation

/// Manager class for Bookmarks
class BookmarkManager: ObservableObject {
    /// Bookmarked Info
    @Published var bookmarkedInfo: [scamInfo]{
        didSet{
            if let bookmarked = try? JSONEncoder().encode(bookmarkedInfo){
                UserDefaults.standard.set(bookmarked, forKey: StorageKeys.bookmarkedInfo.rawValue)
            }
        }
    }
    
    init(){
        if let data = UserDefaults.standard.data(forKey: StorageKeys.bookmarkedInfo.rawValue){
            let bookmarked = try? JSONDecoder().decode([scamInfo].self, from: data)
            self.bookmarkedInfo = bookmarked ?? []
        }
        else {
            self.bookmarkedInfo = []
        }
    }
}

/// REFERENCES
/// USER DEFAULTS https://www.simpleswiftguide.com/how-to-use-userdefaults-in-swiftui/
