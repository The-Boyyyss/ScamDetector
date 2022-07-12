/*
 This page include code for home screen which the user fill see.
 */

import SwiftUI

struct HomeScreen:View{
    
    var body: some View{
        ZStack{
            VStack{
                Image("scam-Detector-logo2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width*1.1, height: UIScreen.main.bounds.height*0.22)
                    .padding(.bottom, UIScreen.main.bounds.width*0.05)
                    .padding(.top, -UIScreen.main.bounds.width*0.25)
                    .padding(.leading, 15)
                
                NavigationLink(destination: ScamDetect(), label:{
                    VStack{
                        Text("Detect")
                        Text("Scam")
                    }
                    .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.21, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .font(.system(size: UIScreen.main.bounds.width*0.15, weight: .bold))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 1.75)
                    )
                })
                .padding(.bottom, 40)
                .padding(.top, 40)
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                
                NavigationLink(destination: History(), label:{
                    HStack{
                        Image(systemName: "clock.arrow.circlepath")
                            .padding(.trailing, 60)
                            .padding(.leading, -50)
                        Text("History")
                    }
                    .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height * 0.12, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: UIScreen.main.bounds.width*0.1))
                }).padding(.bottom, 40).shadow(color: .gray, radius: 5, x: 0, y: 5)
                
                NavigationLink(destination: MoreInfoScreen(data: LoadData.load(name: "MoreInfo+Data")), label:{
                    HStack{
                        Image(systemName: "info.circle")
                            .padding(.trailing, 40)
                        Text("Information")
                    }
                    .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.12, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: UIScreen.main.bounds.width*0.1))
                }).padding(.bottom, 40).shadow(color: .gray, radius: 5, x: 0, y: 5)
            }.padding(.top, 75)
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(GradientBackground().blueGradient)
    }
}


// Ref:
// For Buttons: https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images
// For rgb colors: https://stackoverflow.com/questions/56452386/color-rgb-initializer-not-working-as-background-in-swiftui
//https://www.appcoda.com/swiftui-buttons/
//Navigation link: https://developer.apple.com/documentation/swiftui/navigationlink
// Shadow: https://www.hackingwithswift.com/quick-start/swiftui/how-to-draw-a-shadow-around-a-view
