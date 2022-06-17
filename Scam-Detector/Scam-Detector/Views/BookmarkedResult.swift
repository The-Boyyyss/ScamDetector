//
//  BookmarkedResult.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-06-16.
//

import SwiftUI


struct BookmarkedResult: View {
    @Binding var result: String;
    
    var body: some View {
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)

            VStack(alignment: .center){
                Text("Scam Results")
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: UIScreen.main.bounds.width*0.1, weight: .bold))
                    .padding(.bottom, UIScreen.main.bounds.height*0.04)
                    .padding(.top, -UIScreen.main.bounds.height*0.08)
                Text("\(result)")
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: UIScreen.main.bounds.width*0.08, weight: .semibold))
                    .multilineTextAlignment(.center)
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
        }
    }
}

