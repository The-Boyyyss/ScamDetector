//
//  ContentView.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-16.
//

import SwiftUI

struct ContentView: View {
    let bookmark = BookmarkManager()
    var body: some View {
        NavigationView{
            SplashScreen()
        }.environmentObject(bookmark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
