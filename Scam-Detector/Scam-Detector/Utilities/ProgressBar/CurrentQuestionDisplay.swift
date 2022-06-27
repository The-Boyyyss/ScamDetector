//
//  CurrentQuestionDisplay.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-06-04.
//

import Foundation
import SwiftUI

/*
The main component of the progress indicator
It is a circle that is overlayed with a text field
The text variable is a binding that represents the current question.
*/
struct CurrentQuestionDisplay: View {
    
    /// a variable with a binding property to an Integer that is used for the question's number
    @Binding var questionNum: Int
    
    var body: some View {
        Circle()
            .strokeBorder(Color.customButtonColor, lineWidth: 4)
            .background(Circle().foregroundColor(.white))
            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.1)
            .overlay(Text("\(questionNum)")
                .font(.system(size: 36))
                .frame(width: UIScreen.main.bounds.width * 0.1, height: UIScreen.main.bounds.height * 0.05, alignment: .center)
                .padding())
    }
}