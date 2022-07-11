//
//  Questions.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-22.
//

import SwiftUI
import Foundation

struct ScamDetect_Questions:View {
    
    /// the current node in the tree
    @State var node: QTNode = QuestionTree.instance.reset()
    /// All the nodes we traverse as we navigate the tree
    @Binding var chosenNodes: [QTNode]
    /// move to the results page when true
    @Binding var results: Bool
    /// saved results manager
    @EnvironmentObject var bookmarks: BookmarkManager
    /// remaining questions that are unanswered.
    @Binding var unAnsweredQuestions: Int
    /// the current question that is being display.
    @Binding var currQuestion: Int
    
    /// used to create the buttons that handle navigating between nodes via user answers
    func makeButton(name: String, answer: ScamDetectAnswer) -> some View {
        return AnyView(Button(name) {
            do {
                try node = QuestionTree.instance.answerQuestion(givenAnswer: answer)
                chosenNodes.append(node)
                currQuestion = node.id.0
            }
            catch {
                // TODO add boolean result
                bookmarks.addResultToHistory(qtNodes: chosenNodes)
                results = true
            }
        })
        .buttonStyle(CustomButton())
    }
    
    var body: some View {
        ZStack {
            VStack {
                ProgressIndicator(currentQuestion: $currQuestion, totalQuestions: $unAnsweredQuestions)
                    .frame(width: uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.20, alignment: .center)
                    .onChange(of: node.id.0, perform: { value in
                        unAnsweredQuestions -= 1
                })
                ZStack() {
                    Rectangle()
                        .fill(.white)
                    
                    VStack {
                        Text(node.question)
                            .font(.system(size: uSizes.sWidth * 0.07))
                        Rectangle()
                            .frame(width: uSizes.sWidth * 0.50, height: 3)
                            .border(.black, width: 3)
                    }
                }
                .frame(width:  uSizes.sWidth * 0.70, height: uSizes.sHeight * 0.4)
                .padding(0)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 4, x: 4, y: 5)
                
                VStack {
                    makeButton(name: "Yes", answer: ScamDetectAnswer.Yes)
                    makeButton(name: "No", answer: ScamDetectAnswer.No)
                    Spacer().frame(height: uSizes.sHeight * 0.1)
                }
                .frame(width: uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.45)
                .padding(0)
            }
        }
    }
}

