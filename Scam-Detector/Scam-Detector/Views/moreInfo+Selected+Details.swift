//
//  moreInfo+Selected+Details.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-22.
//

import Foundation
import SwiftUI

struct moreInfoSelectedDetails:View{
    var body: some View{
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Phone Scam")
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: 45, weight: .bold))
                    .padding(.top, 15)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .shadow(radius: 10)
                        .frame(width: 350, height: 550)
                        .padding()
                    VStack{
                        
                    }
                }
                
                Spacer()

                NavigationLink(destination: moreInfoScreen(),
                label:{
                    Text("Close")
                        .frame(width: 280, height: 90, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 30))
                        .padding()
                }).padding()
            }
        }
    }
}
