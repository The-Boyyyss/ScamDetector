import Foundation
import SwiftUI

/// information on how to fix the current situation if it is determined you are being scammed
struct HowToFix: View {
    /// a variable that contains a information about how to fix or what to do after a bad result, it is a value of string
    @Binding var howToFixValues: [String]
    /// a variable that contains a string of a image name that is used to display on the screen
    @Binding var fixImage: String
    
    var body: some View {
        VStack {
                Spacer().frame(height: 8)
                Text("How To Fix").font(.system(size: 42)).bold().padding()
                .frame(width: uSizes.sWidth, alignment: .leading)
                
                ScrollView {
                    Image(systemName: "\(fixImage)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: uSizes.sWidth * 0.5, height: uSizes.sHeight * 0.3, alignment: .leading)
                        .padding()
                    VStack {
                        ForEach(Array(howToFixValues.enumerated()), id: \.element) { index, element in
                            Text("Step \(index + 1)")
                                .font(.system(size: 32)).bold()
                                .frame(width: uSizes.sWidth, alignment: .leading)
                                .padding(.top, 10)
                            Text(element)
                                .font(.system(size: 30))
                                .frame(width: uSizes.sWidth * 0.80, alignment: .leading)
                        }.frame(width: uSizes.sWidth * 0.9, alignment: .leading)
                        Spacer()
                    }.frame(width: uSizes.sWidth * 0.85, alignment: .leading).padding()
                }.padding(.bottom, uSizes.sHeight * 0.12)
        }.frame(width: uSizes.sWidth, height: uSizes.sHeight).background(GradientBackground().blueGradient).padding()
    }
}

// Refs:
// SwiftUI get the index of each element in an array:
// https://stackoverflow.com/questions/57244713/get-index-in-foreach-in-swiftui
