//
//  ProgressIndicator.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-06-04.
//

import Foundation
import SwiftUI

struct ProgressIndicator: View {
    
    @Binding var currentQuestion: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.02)
                .foregroundColor(Color.customButtonColor)
            CurrentQuestionDisplay(questionNum: $currentQuestion)
        }
    }
}

// THIS IS ONLY FOR PREVIEW DURING DEVELOPMENT
//struct ProgressIndicatorPreview: PreviewProvider {
//    static var previews: some View {
//        ProgressIndicator()
//    }
//}
