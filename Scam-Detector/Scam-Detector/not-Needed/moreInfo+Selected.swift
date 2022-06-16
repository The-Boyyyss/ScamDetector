////
////  moreInfo+Selected.swift
////  Scam-Detector
////
////  Created by VARUN SIDHU on 2022-05-22.
////
//
//import Foundation
//import SwiftUI
//
//class passID: ObservableObject {
//    @Published var objID = 0
//}
//
//struct moreInfoSelected:View{
//    
//    let data: scamInfo
//    
//    @EnvironmentObject var model : passID
//    
//    @State var isIdTapped = false
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
//                    .padding(.bottom, 80)
//                    .padding(.top, -125)
//                
//                // What it is
//                
//                HStack{
//                    Image(systemName: "questionmark.circle")
//                        .padding(.trailing, 30)
//                        .padding(.leading, -40)
//                    Text("What it is")
//                }
//                .frame(width: 350, height: 100, alignment: .center)
//                .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .font(.system(size: 40))
//                .shadow(color: .gray, radius: 5, x: 0, y: 5)
//                .padding(.bottom, 40)
//                .onTapGesture{
//                    model.objID = 1
//                    isIdTapped = true
//                }
//                NavigationLink("", destination: moreInfoSelectedDetails(data: data), isActive: $isIdTapped)
//                
//                // What to do
//                
//                HStack{
//                    Image(systemName: "magnifyingglass")
//                        .padding(.trailing, 30)
//                        .padding(.leading, -5)
//                    Text("What to do")
//                }
//                .frame(width: 350, height: 100, alignment: .center)
//                .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .font(.system(size: 40))
//                .shadow(color: .gray, radius: 5, x: 0, y: 5)
//                .padding(.bottom, 40)
//                .onTapGesture{
//                    model.objID = 2
//                    isIdTapped = true
//                }
//                NavigationLink("", destination: moreInfoSelectedDetails(data: data), isActive: $isIdTapped)
//                
//                // How to prevent
//
//                HStack{
//                    Image(systemName: "lock.circle.fill")
//                        .padding(.trailing, 40)
//                    Text("Prevention")
//                }
//                .frame(width: 350, height: 100, alignment: .center)
//                .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .font(.system(size: 40))
//                .shadow(color: .gray, radius: 5, x: 0, y: 5)
//                .padding(.bottom, 40)
//                .onTapGesture{
//                    model.objID = 3
//                    isIdTapped = true
//                }
//                NavigationLink("", destination: moreInfoSelectedDetails(data: data), isActive: $isIdTapped)
//
//                // Add to bookmark
//
//                NavigationLink(destination: homeScreen(),
//                label:{
//                    HStack{
//                        Image(systemName: "bookmark")
//                            .padding(.trailing, 40)
//                        Text("Bookmark")
//                    }
//                    .frame(width: 350, height: 100, alignment: .center)
//                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    .font(.system(size: 40))
//                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
//                    .padding(.bottom, 40)
//                })
//                
//            }
//        }
//    }
//}
//
//
//// Refrence:
//// https://stackoverflow.com/questions/68952701/passing-variables-between-views-swiftui
