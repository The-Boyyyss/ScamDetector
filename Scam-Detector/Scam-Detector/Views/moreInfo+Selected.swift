//
//  moreInfo+Selected.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-22.
//

import Foundation
import SwiftUI

class passID: ObservableObject {
    @Published var objID = 0
}


struct moreInfoSelected:View{
    
    let data: scamInfo
    
    @EnvironmentObject var model : passID
    @EnvironmentObject var bookmarks: BookmarkManager
    
    @State var isIdTapped = false
    
    var body: some View{
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text(data.scamType)
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: 45, weight: .bold))
                    .padding(.bottom, 80)
                    .padding(.top, -125)


                Text("What it is")
                    .frame(width: 300, height: 100, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: 33))
                    .padding()
                    .onTapGesture{
                        model.objID = 1
                        isIdTapped = true
                    }
                NavigationLink("", destination: moreInfoSelectedDetails(data: data), isActive: $isIdTapped)


                Text("What to do")
                    .frame(width: 300, height: 100, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: 33))
                    .padding()
                    .onTapGesture{
                        model.objID = 2
                        isIdTapped = true
                    }
                NavigationLink("", destination: moreInfoSelectedDetails(data: data), isActive: $isIdTapped)


                Text("How to prevent")
                    .frame(width: 300, height: 100, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: 33))
                    .padding()
                    .onTapGesture{
                        model.objID = 3
                        isIdTapped = true
                    }
                NavigationLink("", destination: moreInfoSelectedDetails(data: data), isActive: $isIdTapped)

                if bookmarks.bookmarkedInfo.contains(where: { $0.id == data.id }){
                    Text("Bookmarked")
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 33))
                        .padding()
                        .onTapGesture{
                            bookmarks.bookmarkedInfo.removeAll(where: { $0.id == data.id })
                        }
                }
                else {
                    Text("Bookmark")
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 33))
                        .padding()
                        .onTapGesture{
                            // Testing
                            print(bookmarks.bookmarkedInfo)
                            bookmarks.bookmarkedInfo.insert(data, at: 0)
                        }
                }
            }
        }
    }
}


// Refrence:
// https://stackoverflow.com/questions/68952701/passing-variables-between-views-swiftui
