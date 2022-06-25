//
//  Home.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-16.
//

import SwiftUI

struct homeScreen: View{
    @State var detectScam: Bool = false
    
    var body: some View{
        NavigationView {
            ZStack{
                Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    if detectScam {
                        scamDetect()
                    }
                    else {
                        VStack{
                            Image("scam-Detector-logo2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 250)
                                .padding(.bottom, 100)
                            
                            
                            NavigationLink(destination: scamDetect(), label:{
                                                Text("Detect Scam")
                                                    .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.18, alignment: .center)
                                                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                                    .foregroundColor(.white)
                                                    .cornerRadius(35)
                                                    .font(.system(size: UIScreen.main.bounds.width * 0.13, weight: .bold))
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 35)
                                                            .stroke(Color.white, lineWidth: 3.5)
                                                    )
                            }).padding(UIScreen.main.bounds.width*0.015)
                            
                            
                            Button{}
                            label:{
                                HStack{
                                    Image(systemName: "bookmark")
                                        .padding(.trailing, 10)
                                    Text("Bookmarks")
                                }
                                    .frame(width: 270, height: 80, alignment: .center)
                                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.system(size: 30))
                            }
                            
                            Button{}
                            label:{
                                HStack{
                                    Image(systemName: "info.circle")
                                        .padding(.trailing, 10)
                                    Text("Information")
                                }
                                .frame(width: 270, height: 80, alignment: .center)
                                .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.system(size: 30))
                            }
                            
                            Button{}
                            label:{
                                HStack{
                                    Image(systemName: "phone.fill")
                                        .padding(.trailing, 10)
                                    Text("Emergency Contact")
                                }
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
        }
        .navigationBarHidden(true)
    }
}


// Ref:
// For Buttons: https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images
// For rgb colors: https://stackoverflow.com/questions/56452386/color-rgb-initializer-not-working-as-background-in-swiftui
//https://www.appcoda.com/swiftui-buttons/

