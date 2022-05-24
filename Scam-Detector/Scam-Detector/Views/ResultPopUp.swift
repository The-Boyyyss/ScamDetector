//
//  ResultPopUp.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-05-22.
//
//  Ref:
//  Pop-up: https://www.youtube.com/watch?v=ddr3E0l4gIQ&ab_channel=SwiftfulThinking

import Foundation
import SwiftUI

struct ResultPopUp: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack() {
            Text("What to do").bold()
                .padding()
            Text("Some content here...")
            Spacer()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Close")
                    .foregroundColor(.white)
                    .padding()
            })
            .padding(10)
            .background(Color.customButtonColor)
            .cornerRadius(20.0)
        }
    }
}
