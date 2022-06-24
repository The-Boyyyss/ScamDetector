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
    @State var result: Result = Result(id: 0, questions: [], date: Date.now, isAScam: true);
    @State var hasSelected: Bool = false
    
    var body: some View {
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                Text("Results History")
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: UIScreen.main.bounds.width*0.1, weight: .bold))
                    .padding(.bottom, UIScreen.main.bounds.height*0.04)
                    .padding(.top, -UIScreen.main.bounds.height*0.08)
                Text("Saved Scam Detect Results")
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: UIScreen.main.bounds.width*0.08, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.top, -UIScreen.main.bounds.height*0.03)
                
                Spacer().frame(height:UIScreen.main.bounds.height * 0.03)
                
                NavigationLink(destination: BookmarkedResult(result: $result), isActive: $hasSelected){}
                List{
                    Section(header: Text("Select a Date")
                        .font(.system(size:UIScreen.main.bounds.width * 0.04, weight: .bold))){
                            ForEach(bookmarks.bookmarkedResults) { d in
                            
                            HStack(){
                                Text(d.date, style: .date)
                                    .font(.system(size: UIScreen.main.bounds.width * 0.06))
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.system(size: UIScreen.main.bounds.width * 0.06))
                            }
                            .contentShape(Rectangle())
                            .onTapGesture{
                                result = d;
                                hasSelected = true
                            }
                        }
                    }.listRowBackground(Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255))
                }
                .border(Color.black)
                .listStyle(.plain)
                .environment(\.defaultMinListRowHeight, 70)
                Spacer().frame(height:UIScreen.main.bounds.height * 0.05)
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
        }
    }
}

//struct BookmarksView_Previews: PreviewProvider{
//    static var previews: some View {
//        Bookmarks()
//    }
//}

// REFERENES
// Default row height https://stackoverflow.com/questions/58242342/swiftui-row-height-of-list-how-to-control
