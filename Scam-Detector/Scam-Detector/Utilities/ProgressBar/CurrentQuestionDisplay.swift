//
//  CurrentQuestionDisplay.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-06-04.
//

import Foundation
import SwiftUI

struct CurrentQuestionDisplay: View {
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
