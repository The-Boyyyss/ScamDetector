import Foundation
import SwiftUI

/// A component that is for stylizing the buttons and can be applied through .buttonStyle(CustomButton())
/// Mostly commonly used with short words in the questions page and the result page.

struct CustomButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(
                width: UIScreen.main.bounds.width * 0.60,
                height: UIScreen.main.bounds.height * 0.05,
                alignment: .center)
            .padding()
            .background(Color.customDarkBlue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.system(size: 28, weight: .bold, design: .default))
            .shadow(color: .gray, radius: 4, x: 0, y: 5)
    }
}
//  Ref:
//  CustomButton: https://www.hackingwithswift.com/quick-start/swiftui/customizing-button-with-buttonstyle
