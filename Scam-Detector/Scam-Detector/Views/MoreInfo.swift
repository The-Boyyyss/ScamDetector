//
//  MoreInfo.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-22.
//

import Foundation
import SwiftUI

struct moreInfoScreen:View{

    @State var info: String = ""

    var body: some View{
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)

            VStack{

                HStack{
                    Image(systemName: "info.circle.fill")
                        .padding(.trailing, UIScreen.main.bounds.width*0.05)
                    Text("More Information")
                    }
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: UIScreen.main.bounds.width*0.08, weight: .bold))
                    .padding(.bottom, UIScreen.main.bounds.height*0.04)
                    .padding(.top, -UIScreen.main.bounds.height*0.05)



                CustomTextField(ourText: $info, placeholder: Text("Search"), systemImage: "magnifyingglass")


                ScrollView {
                    VStack(spacing: 15) {
                            ForEach(1..<6) { index in
                                NavigationLink(destination: moreInfoSelected(), label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.white)
                                        .shadow(radius: 10)
                                        .frame(width: UIScreen.main.bounds.width*0.75, height: UIScreen.main.bounds.height*0.3)
                                        .padding()
                                    VStack{
                                        Text("Heading")
                                            .padding()
                                            .padding(.bottom, 20)
                                            .padding(.top, 15)
                                        Image(systemName: "doc.text.fill")
                                            .font(.system(size: 50))
                                            .padding(.top, 15)
                                    }
                                        .font(.system(size: 30))
                                        .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .padding(.bottom, 100)
                                }
                            })
                        }
                    }
                }
            }
        }
    }
}


// Refrence:
//https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-horizontal-and-vertical-scrolling-using-scrollview
// https://www.youtube.com/watch?v=9QhhpeYKjOs&t=106s
