/*
 This page includes code of list of different types of scams and navigation to more information on particular scam.
 Also it inludes option to update emercency contact.
 */

import Foundation
import SwiftUI

struct MoreInfoScreen:View{
    
    // For text field
    @State var info: String = ""
    // To pass id of selected scam. For eg: 1 for email scam.
    let data: [ScamInfo]
    // To add all the scam types in array and then filter then for search feature.
    @State private var arrayofInfo: [String] = []

    var body: some View{
        ZStack{
            VStack{
                Text("Information")
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: UIScreen.main.bounds.width*0.11, weight: .bold))
                    .padding(.bottom, UIScreen.main.bounds.height*0.03)
                    .padding(.top, -UIScreen.main.bounds.height*0.05)

                
                CustomTextField(ourText: $info, placeholder: Text("Search"))
                    .padding()

                ScrollView {
                    VStack(spacing: 15) {
                        NavigationLink(destination: EmergencyContact(), label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                    .shadow(radius: 10)
                                    .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.15)
                                    .padding()
                                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                HStack{
                                    Image(systemName: "phone.circle")
                                        .font(.system(size: UIScreen.main.bounds.width*0.1))
                                        .padding(.leading, 30)
                                    Text("Emergency Contact")
                                        .font(.system(size: UIScreen.main.bounds.width*0.085))
                                        .padding()
                                        .frame(maxWidth: 210)
                                    Image(systemName: "arrow.forward")
                                        .font(.system(size: UIScreen.main.bounds.width*0.1))
                                        .padding(.leading, 15)
                                        .padding(.trailing, 15)
                                }
                                .foregroundColor(.white)
                            }
                        })
                        .padding()
                        ForEach(data.filter({
                            info.isEmpty || "\($0)".contains(info)
                        }), id: \.id) { data in
                            NavigationLink(destination: MoreInfoDetails(data: data), label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .shadow(radius: 10)
                                        .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.15)
                                        .padding()
                                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                    HStack{
                                        Image(systemName: data.sysImg)
                                            .font(.system(size: UIScreen.main.bounds.width*0.1))
                                            .padding(.leading, 30)
                                        Text(data.scamType)
                                            .font(.system(size: UIScreen.main.bounds.width*0.085))
                                            .padding()
                                            .frame(maxWidth: 200)
                                        Image(systemName: "arrow.forward")
                                            .font(.system(size: UIScreen.main.bounds.width*0.1))
                                            .padding(.leading, 15)
                                            .padding(.trailing, 15)
                                    }
                                    .foregroundColor(.white)
                                }
                            })
                        }
                    }
                }
            }
        }
        .background(GradientBackground().blueGradient)
        .onTapGesture {
            KeyboardDismiss()
        }
    }
}

// Refrence:
//https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-horizontal-and-vertical-scrolling-using-scrollview
// https://www.youtube.com/watch?v=9QhhpeYKjOs&t=106s
// https://www.youtube.com/watch?v=BCSP_uh0co0
// https://www.youtube.com/watch?v=vgvbrBX2FnE&list=LL&index=3&t=965s
