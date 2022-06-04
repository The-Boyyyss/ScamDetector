//
//  moreInfo+Selected.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-22.
//

import Foundation
import SwiftUI

struct moreInfoSelected:View{
    var body: some View{
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Phone Scam")
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: 45, weight: .bold))
                    .padding(.bottom, 80)
                    .padding(.top, -125)

                NavigationLink(destination: moreInfoSelectedDetails(),
                label:{
                    Text("What it is")
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 33))
                        .padding()
                })

                
                NavigationLink(destination: moreInfoSelectedDetails(),
                label:{
                    Text("What to do")
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 33))
                        .padding()
                })
                
                NavigationLink(destination: moreInfoSelectedDetails(),
                label:{
                    Text("How to prevent")
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 33))
                        .padding()
                })

                
                NavigationLink(destination: moreInfoSelectedDetails(),
                label:{
                    Text("Add to Bookmars")
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 33))
                        .padding()
                })

            }
        }
    }
}
