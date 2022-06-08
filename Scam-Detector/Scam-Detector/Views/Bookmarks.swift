//
//  Bookmarks.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-06-06.
//

import SwiftUI

/// Bookmarks Page View
struct Bookmarks: View {
    
    @EnvironmentObject var bookmarks: BookmarkManager
    
    var body: some View {
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                Text("Bookmarks")
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: UIScreen.main.bounds.width*0.1, weight: .bold))
                    .padding(.bottom, UIScreen.main.bounds.height*0.04)
                    .padding(.top, -UIScreen.main.bounds.height*0.08)
                
                ScrollView(.vertical){
                    VStack(){
                        Text("Bookmarked Results")
                            .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                            .font(.system(size: UIScreen.main.bounds.width*0.06, weight: .semibold))
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.white)
                                .frame(width: UIScreen.main.bounds.width*0.75, height: UIScreen.main.bounds.height*0.2)
                                .padding()
                            VStack(){
                                Text("Results todo here")
                            }
                        }
                        Text("Bookmarked Info")
                            .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                            .font(.system(size: UIScreen.main.bounds.width*0.06, weight: .semibold))
                        VStack() {
                            ForEach(bookmarks.bookmarkedInfo, id: \.id) { data in
                                    NavigationLink(destination: moreInfoSelected(data: data), label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                            .shadow(color: .black, radius: 5, x: 0, y: 7)
                                            .frame(width: UIScreen.main.bounds.width*0.75, height: UIScreen.main.bounds.height*0.12)
                                            .padding()
                                        HStack(spacing: 10){
                                            Image(systemName: data.sysImg)
                                                .foregroundColor(.white)
                                                .font(.system(size: 30))
                                            Text(data.scamType)
                                                .foregroundColor(.white)
                                                .font(.system(size: 30))
                                                .frame(maxWidth: UIScreen.main.bounds.width * 0.45)
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.white)
                                                .font(.system(size: 30))
                                        }
                                        .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                    }
                                })
                            }
                        }
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
        }
    }
}

