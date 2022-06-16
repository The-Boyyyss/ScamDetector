////
////  moreInfo+Selected+Details.swift
////  Scam-Detector
////
////  Created by VARUN SIDHU on 2022-05-22.
////
//
//import Foundation
//import SwiftUI
//
//
//struct moreInfoSelectedDetails:View{
//    let data: scamInfo
//
//    var body: some View{
//        ZStack{
//            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
//                    .edgesIgnoringSafeArea(.all)
//
//            VStack{
//                Text(data.scamType)
//                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
//                    .font(.system(size: 45, weight: .bold))
//                    .padding(.top, -40)
//
//                ScrollView{
//                    Image(data.moreInfo.image)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 300, height: 200)
//                        .padding()
//
//                    VStack (alignment: .leading){
//                        Text(data.moreInfo.whatItIs)
//                    }.padding()
//
//
//                    Text("Links to additional information: ")
//                        .font(.system(size: 35))
//                        .multilineTextAlignment(.leading)
//
//                    // Link 1
//                    Link(destination: URL(string: data.moreInfo.link1)!) {
//                        Text("Link 1")
//                            .frame(width: 275, height: 90, alignment: .center)
//                            .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
//                            .foregroundColor(.white)
//                            .cornerRadius(10)
//                            .font(.system(size: UIScreen.main.bounds.width*0.08))
//                    }.padding().shadow(color: .gray, radius: 5, x: 0, y: 5)
//
//                    // Link 2
//                    Link(destination: URL(string: data.moreInfo.link2)!) {
//                        Text("Link 2")
//                            .frame(width: 275, height: 90, alignment: .center)
//                            .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
//                            .foregroundColor(.white)
//                            .cornerRadius(10)
//                            .font(.system(size: UIScreen.main.bounds.width*0.08))
//                    } .padding().shadow(color: .gray, radius: 5, x: 0, y: 5)
//                }
//            }
//        }
//    }
//}
//
//
//// Ref:
//// To navigate to url: https://www.hackingwithswift.com/quick-start/swiftui/how-to-open-web-links-in-safari
