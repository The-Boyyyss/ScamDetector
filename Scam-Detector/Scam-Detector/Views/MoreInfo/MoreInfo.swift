import Foundation
import SwiftUI

/// displays links for users to access additional information
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
                    .font(.system(size: uSizes.sWidth*0.11, weight: .bold))
                    .padding(.bottom, uSizes.sHeight*0.03)
                    .padding(.top, -uSizes.sHeight*0.05)

                
                CustomTextField(ourText: $info, placeholder: Text("Search"))
                    .padding()

                ScrollView {
                    VStack(spacing: 15) {
                        NavigationLink(destination: EmergencyContact(), label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: uSizes.sWidth*0.065)
                                    .fill(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                    .shadow(radius: 10)
                                    .frame(width: uSizes.sWidth*0.9, height: uSizes.sHeight*0.16)
                                    .padding()
                                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                HStack{
                                    Image(systemName: "phone.circle")
                                        .font(.system(size: uSizes.sWidth*0.09))
                                        .padding(.leading, uSizes.sWidth*0.08)
                                    Text("Emergency Contact")
                                        .font(.system(size: uSizes.sWidth*0.085))
                                        .padding(.leading, uSizes.sWidth*0.06)
                                        .frame(maxWidth: 210)
                                    Image(systemName: "arrow.forward")
                                        .font(.system(size: uSizes.sWidth*0.1))
                                        .padding(.leading, uSizes.sWidth*0.08)
                                        .padding(.trailing, uSizes.sWidth*0.085)
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
                                    RoundedRectangle(cornerRadius: uSizes.sWidth*0.065)
                                        .fill(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .shadow(radius: 10)
                                        .frame(width: uSizes.sWidth*0.9, height: uSizes.sHeight*0.16)
                                        .padding()
                                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                    HStack{
                                        Image(systemName: data.sysImg)
                                            .font(.system(size: uSizes.sWidth*0.09))
                                            .padding(.leading, uSizes.sWidth*0.15)
                                        Text(data.scamType)
                                            .font(.system(size: uSizes.sWidth*0.085))
                                            .padding(.leading, uSizes.sWidth*0.055)
                                            .frame(maxWidth: 200)
                                        Image(systemName: "arrow.forward")
                                            .font(.system(size: uSizes.sWidth*0.1))
                                            .padding(.leading, uSizes.sWidth*0.06)
                                            .padding(.trailing, uSizes.sWidth*0.12)
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
