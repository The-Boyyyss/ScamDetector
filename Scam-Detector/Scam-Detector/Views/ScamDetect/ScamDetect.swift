import SwiftUI
import Foundation

struct ScamDetect:View {
    /// nodes of answers chosen by users
    @State var chosenNodes: [QTNode] = []
    /// whether to display results page
    @State var results: Bool = false
    /// a state variable for indicating which content to show after questions are answered
    @State var badResults: Bool = true
    /// setting the display for the first question
    @State var initalQuestion = 1
    /// setting the max amount of questions the user can answer
    @State var maxQuestions = 5
    
    var body: some View {
        VStack {
            if (results == true) {
                ResultPage(badResults: $badResults, nodes: $chosenNodes)
            }
            else {
                ScamDetect_Questions(
                    chosenNodes: $chosenNodes,
                    results: $results,
                    badResults: $badResults,
                    unAnsweredQuestions: $maxQuestions,
                    currQuestion: $initalQuestion
                )
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(GradientBackground().blueGradient)
        .navigationBarHidden(self.results)
        .navigationBarBackButtonHidden(self.results)
    }
}

