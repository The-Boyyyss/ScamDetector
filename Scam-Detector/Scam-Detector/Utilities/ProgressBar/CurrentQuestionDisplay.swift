import Foundation
import SwiftUI

/*
A component of the progress indicator
It is a circle that is overlayed with a text field
The text variable is a binding that represents the current question.
*/
struct CurrentQuestionDisplay: View {
    
    /// a variable with a binding property to an Integer that is used for displaying the question's number
    /// in the progress indicator container.
    @Binding var questionNum: Int
    
    var body: some View {
        Circle()
            .strokeBorder(Color.customButtonColor, lineWidth: 3.5)
            .background(Circle().foregroundColor(.white))
            .frame(width: uSizes.sWidth * 0.18, height: uSizes.sHeight * 0.1)
            .overlay(Text("\(questionNum)")
                .font(.system(size: 36))
                .frame(width: uSizes.sWidth * 0.1, height: uSizes.sHeight * 0.05, alignment: .center)
                .padding())
    }
}
