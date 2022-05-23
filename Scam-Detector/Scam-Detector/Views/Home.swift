//
//  Home.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-16.
//

import SwiftUI

struct homeScreen:View{
    var body: some View{
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("scam-Detector-logo2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 0.92, height: UIScreen.main.bounds.height*0.2)
                    .padding(.bottom, UIScreen.main.bounds.height*0.09)
                    .padding(.top, -UIScreen.main.bounds.height*0.09)
                
                
                
                
                NavigationLink(destination: moreInfoScreen(), label:{
                    Text("Detect Scam")
                        .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.18, alignment: .center)
                        .background(Color(red: 130 / 255, green: 163 / 255, blue: 161 / 255))
                        .foregroundColor(Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255))
                        .cornerRadius(65)
                        .font(.system(size: UIScreen.main.bounds.width * 0.13, weight: .bold))
                        .overlay(
                            RoundedRectangle(cornerRadius: 65)
                                .stroke(Color.white, lineWidth: 5)
                        )

                }).padding()
                
                
                
                NavigationLink(destination: moreInfoScreen(), label:{
                    HStack{
                        Image(systemName: "bookmark")
                            .padding(.trailing, UIScreen.main.bounds.width*0.05)
                        Text("Bookmarks")
                    }
                        .frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.height*0.1, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: UIScreen.main.bounds.width*0.08))
                }).padding()
                       
                
                
                NavigationLink(destination: moreInfoScreen(), label:{
                    HStack{
                        Image(systemName: "info.circle")
                            .padding(.trailing, UIScreen.main.bounds.width*0.05)
                        Text("Information")
                    }
                    .frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.height*0.1, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: UIScreen.main.bounds.width*0.08))
                }).padding()
                
                
                
                NavigationLink(destination: moreInfoScreen(), label:{
                    HStack{
                        Image(systemName: "phone.fill")
                            .padding(.trailing, UIScreen.main.bounds.width*0.05)
                        Text("Emergency Contact")
                    }
                    .frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.height*0.1, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: UIScreen.main.bounds.width*0.08))
                }).padding()
            }
        }
    }
}


// Ref:
// For Buttons: https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images
// For rgb colors: https://stackoverflow.com/questions/56452386/color-rgb-initializer-not-working-as-background-in-swiftui
//https://www.appcoda.com/swiftui-buttons/

//Navigation link: https://developer.apple.com/documentation/swiftui/navigationlink

