//  Refs:
//  withAnimation: https://swiftontap.com/withanimation(_:_:)

import Foundation
import SwiftUI

/*
The main component for the progress indicator on each of the questions pages
it displays the current question number component and acts as a container.
*/
struct ProgressIndicator: View {
    
    /// a variable with a binding property to a Integer for storing the question's number.
    @Binding var currentQuestion: Int
    /// a variable that represents an Integer and is used to track the total count of questions. This shows that the user has "n" questions left to answer before finishing.
    @Binding var totalQuestions: Int
    /// a variable that represents the progress bar width. It has a value of the device's screen size in width multiply by a scaling of CGFloat.
    var progressBarWidth = uSizes.sWidth * 0.85
    /// a variable that represents an array of Bool and is used when a question has been answered. Then it will append a true value to its' collection.
    @State var answeredQuestions: [Bool] = []
    /// a variable that determines the width of the small circle used for displaying remaining questions on the progress bar
    var smallCircleWidth = 0.05
    /// a variable that determines the height of the small circle used for displaying remaining questions on the progress bar
    var smallCircleHeight = 0.07
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .frame(width: progressBarWidth, height: uSizes.sHeight * 0.01)
                .foregroundColor(Color.customButtonColor)
            HStack(spacing: progressBarWidth * 0.02) {
                ForEach(0..<totalQuestions, id:\.self) { index in
                    Circle()
                        .fill(.black)
                        .frame(width: uSizes.sWidth * smallCircleWidth, height: uSizes.sHeight * smallCircleHeight)
                }.onChange(of: totalQuestions, perform: { value in
                    withAnimation(.easeInOut(duration: 0.4)) {
                        answeredQuestions.append(true)
                    }
                })
            }.frame(width: progressBarWidth, alignment: .trailing)
            HStack(spacing: progressBarWidth * 0.02) {
                ForEach(answeredQuestions, id:\.self) { index in
                    Circle()
                        .fill(.black)
                        .frame(width: uSizes.sWidth * smallCircleWidth, height: uSizes.sHeight * smallCircleHeight)
                }
            }.frame(width: progressBarWidth, alignment: .leading)
            CurrentQuestionDisplay(questionNum: $currentQuestion)
        }
    }
}
