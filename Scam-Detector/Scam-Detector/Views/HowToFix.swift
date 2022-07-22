import Foundation
import SwiftUI

struct HowToFix: View {
    
    /// a variable that contains a information about how to fix or what to do after a bad result, it is a value of string
    @Binding var howToFixValues: [String]
    /// a variable that contains a string of a image name that is used to display on the screen
    @Binding var fixImage: String
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer().frame(height: 20)
                Text("How To Fix").font(.system(size: 42)).bold().padding()
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                
                VStack(spacing: 5) {
                    Image(systemName: "\(fixImage)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: uSizes.sWidth * 0.7, height: uSizes.sHeight * 0.30)
                    
                    ForEach(howToFixValues, id: \.self) { value in
                        Text(value)
                    }
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width * 0.9, height: uSizes.sHeight, alignment: .leading).padding()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top).padding().background(GradientBackground().blueGradient)
    }
}
