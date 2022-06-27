//
//  Questions.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-22.
//

import SwiftUI
import Foundation

struct scamDetect_Questions:View {
    
    @Binding var node: QTNode
    @Binding var response: [String]
    @Binding var results: Bool
    @State var unAnsweredQuestions: Int = 4
    @State var currQuestion: Int = 1
    
    func makeButton(name: String, answer: ScamDetectAnswer) -> some View {
        return AnyView(Button(name) {
            do {
                try node = QuestionTree.instance.answerQuestion(givenAnswer: answer)
                response.append(node.howToFix)
                currQuestion = node.id.0
            }
            catch {
                print("no children")
                results = true
            }
        }).buttonStyle(CustomButton())
            .font(.system(size: uSizes.sWidth * 0.1))
    }
    
    var body: some View {
        ZStack {
            VStack {
                ProgressIndicator(currentQuestion: $currQuestion, totalQuestions: $unAnsweredQuestions)
                    .frame(width: uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.20, alignment: .center)
                    .padding(.top, 7)
                    .onChange(of: node.id.0, perform: { value in
                        unAnsweredQuestions -= 1
                    })
                
                VStack() {
                    Text(node.question).font(.system(size: uSizes.sWidth * 0.07))
                }.frame(width:  uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.3, alignment: .center)
                    .background(.white)
                    .cornerRadius(20)
                
                VStack {
                    makeButton(name: "Yes", answer: ScamDetectAnswer.Yes).padding()
                    makeButton(name: "No", answer: ScamDetectAnswer.No)
                    Spacer()
                }.frame(width: uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.30, alignment: .bottom)
            }.frame(width: uSizes.sWidth, height: uSizes.sHeight).background(GradientBackground().blueGradient)
        }
    }
}
