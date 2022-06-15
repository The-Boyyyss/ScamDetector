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
    
    
    
    func makeButton(name: String, answer: ScamDetectAnswer) -> some View {
        return AnyView(Button(name) {
            do {
                try node = QuestionTree.instance.answerQuestion(givenAnswer: answer)
                response.append(node.howToFix)
            }
            catch {
                print("no children")
                results = true
            }
        })
            .frame(width: uSizes.sWidth * 0.85, height: uSizes.sWidth * 0.27, alignment: .center)
            .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.system(size: uSizes.sWidth * 0.1))
    }
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                ZStack (alignment: .leading) {
                    
                    Rectangle()
                        .fill(.white)
                        .border(.black, width: 4)
                    
                    Image("scam-Detector-logo1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: uSizes.sWidth * 0.17, height: uSizes.sWidth * 0.17, alignment: .center)
                        .padding(.leading, (uSizes.sWidth * 0.85) * 0.39)
                    
                    Rectangle()
                        .fill(.yellow)
                        .opacity(0.5)
                        .frame(width: (uSizes.sWidth * 0.85) * 0.2, height: uSizes.sWidth * 0.165, alignment: .center)
                }
                .frame(width: uSizes.sWidth * 0.85, height: uSizes.sWidth * 0.18, alignment: .center)
                .cornerRadius(10)
                .padding(.bottom, uSizes.sWidth * 0.05)
                
                ZStack() {
                    
                    Rectangle()
                        .fill(.white)
                    
                    Text(node.question)
                        .font(.system(size: uSizes.sWidth * 0.07))
                }
                .frame(width:  uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.3, alignment: .center)
                
                VStack {
                    makeButton(name: "yes", answer: ScamDetectAnswer.Yes)
                    makeButton(name: "No", answer: ScamDetectAnswer.No)
                }
                .frame(width: uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.45, alignment: .bottom)
            }
        }
    }
}

