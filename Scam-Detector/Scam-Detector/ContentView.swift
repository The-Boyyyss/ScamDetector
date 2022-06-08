//
//  ContentView.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-16.
//

import SwiftUI

struct ContentView: View {
    @StateObject var settings = passID()
    
    var body: some View {
        NavigationView{
            splashScreen().environmentObject(settings)
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
