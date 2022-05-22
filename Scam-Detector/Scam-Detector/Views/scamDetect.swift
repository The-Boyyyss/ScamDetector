//
//  ScamDetect.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-21.
//

import SwiftUI
import Foundation

struct scamDetect:View {
    
    var body: some View {
        
        ZStack {
            viewTemplates.buildDoubleStripeView()
            
            VStack {
                
                ZStack (alignment: .leading) {
                    
                    Rectangle() 
                        .fill(.white)
                    
                    Image("scam-Detector-logo1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70, alignment: .center)
                        .padding(.leading, (UIScreen.main.bounds.width * 0.85) * 0.38)
                    
                    Rectangle()
                        .fill(.yellow)
                        .opacity(0.5)
                        .frame(width: (UIScreen.main.bounds.width * 0.85) * 0.5, height: 75, alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width * 0.85, height: 75, alignment: .center)
                .cornerRadius(10)
                
                ZStack() {
                    
                    Rectangle()
                        .fill(.white)
                    
                    Text("Did you contact them first?")
                }
                .frame(width:  UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                
                VStack {
                    
                    Button("Pop-Up") {}
                        .frame(width: 270, height: 80, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 30))
                    
                    Button("Called Them") {}
                        .frame(width: 270, height: 80, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 30))
                    
                    Button("Called You") {}
                        .frame(width: 270, height: 80, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 30))
                }
            }
        }
    }
}

