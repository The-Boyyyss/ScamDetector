//
//  Scam_DetectorApp.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-16.
//

import SwiftUI

@main
struct Scam_DetectorApp: App {
    let bookmarks = BookmarkManager()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(bookmarks)
        }
    }
}
