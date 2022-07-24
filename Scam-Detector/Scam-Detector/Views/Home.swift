import SwiftUI

// Initial access point and portal for application 
struct HomeScreen:View{
    var body: some View{
        ZStack{
            VStack{
                Image("scam-Detector-logo2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: uSizes.sWidth*1.24, height: uSizes.sHeight*0.25)
                    .padding(.bottom, uSizes.sHeight*0.04)
                    .padding(.top, -uSizes.sHeight*0.14)
                    .padding(.leading, 15)
                
                NavigationLink(destination: ScamDetect(), label:{
                    VStack{
                        Text("Detect")
                        Text("Scam")
                    }
                    .frame(width: uSizes.sWidth*0.9, height: uSizes.sHeight*0.22, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .font(.system(size: uSizes.sWidth*0.14, weight: .bold))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 1.75)
                    )
                })
                .padding(.bottom, uSizes.sWidth*0.075)
                .padding(.top, uSizes.sWidth*0.01)
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                
                NavigationLink(destination: History(), label:{
                    HStack{
                        Image(systemName: "clock.arrow.circlepath")
                            .padding(.trailing, uSizes.sWidth*0.15)
                            .padding(.leading, -uSizes.sWidth*0.15)
                        Text("History")
                    }
                    .frame(width: uSizes.sWidth*0.9, height: uSizes.sHeight * 0.12, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: uSizes.sWidth*0.1))
                }).padding(.bottom, uSizes.sWidth*0.075).shadow(color: .gray, radius: 5, x: 0, y: 5)
                
                NavigationLink(destination: MoreInfoScreen(data: LoadData.load(name: "MoreInfo+Data")), label:{
                    HStack{
                        Image(systemName: "info.circle")
                            .padding(.trailing, uSizes.sWidth*0.12)
                        Text("Information")
                    }
                    .frame(width: uSizes.sWidth*0.9, height: uSizes.sHeight*0.12, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: uSizes.sWidth*0.1))
                }).padding(.bottom, uSizes.sWidth*0.12).shadow(color: .gray, radius: 5, x: 0, y: 5)
                Spacer()
            }.padding(.top, uSizes.sHeight*0.145)
        }.frame(width: uSizes.sWidth, height: uSizes.sHeight)
        .background(GradientBackground().blueGradient)
    }
}

// Ref:
// For Buttons: https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images
// For rgb colors: https://stackoverflow.com/questions/56452386/color-rgb-initializer-not-working-as-background-in-swiftui
//https://www.appcoda.com/swiftui-buttons/
//Navigation link: https://developer.apple.com/documentation/swiftui/navigationlink
// Shadow: https://www.hackingwithswift.com/quick-start/swiftui/how-to-draw-a-shadow-around-a-view
