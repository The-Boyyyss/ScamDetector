//
//  ProgressIndicator.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-06-04.
//
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
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .frame(width: progressBarWidth, height: uSizes.sHeight * 0.01)
                .foregroundColor(Color.customButtonColor)
            HStack {
                ForEach(0..<totalQuestions, id:\.self) { index in
                    Circle()
                        .fill(.black)
                        .frame(width: uSizes.sWidth * 0.06, height: uSizes.sHeight * 0.07)
                }.onChange(of: totalQuestions, perform: { value in
                    withAnimation(.easeInOut(duration: 0.4)) {
                        answeredQuestions.append(true)
                    }
                })
            }.frame(width: progressBarWidth, alignment: .trailing)
            HStack {
                ForEach(answeredQuestions, id:\.self) { index in
                    Circle()
                        .fill(.black)
                        .frame(width: uSizes.sWidth * 0.06, height: uSizes.sHeight * 0.07)
                }
            }.frame(width: progressBarWidth, alignment: .leading)
            CurrentQuestionDisplay(questionNum: $currentQuestion)
        }
    }
}
