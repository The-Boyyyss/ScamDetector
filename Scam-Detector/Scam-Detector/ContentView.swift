//
//  ContentView.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-16.
//

import SwiftUI

struct ContentView: View {
    // Environment object for saved results
    let bookmark = BookmarkManager()
    var body: some View {
        NavigationView{
            SplashScreen()
        }.environmentObject(bookmark).navigationViewStyle(.stack)
            .onAppear{
                QTData.loadData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
