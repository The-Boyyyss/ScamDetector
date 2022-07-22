import SwiftUI
import Foundation

struct ScamDetect_Questions:View {
    /// the current node in the tree
    @State var node: QTNode = QuestionTree.instance.reset()
    /// All the nodes we traverse as we navigate the tree
    @Binding var chosenNodes: [QTNode]
    /// move to the results page when true
    @Binding var results: Bool
    /// a state variable for indicating which content to show after questions are answered
    @Binding var badResults: Bool
    /// saved results manager
    @EnvironmentObject var bookmarks: BookmarkManager
    /// remaining questions that are unanswered.
    @Binding var unAnsweredQuestions: Int
    /// the current question that is being display.
    @Binding var currQuestion: Int
    
    /// changes to the results page
    func changePage(isScam: Bool = true) {
        // assign if the result is a scam or not
        badResults = isScam
        /// save the results of the questions
        bookmarks.addResultToHistory(qtNodes: chosenNodes, isAScam: badResults)
        // transitions to results page
        results = true
    }
    
    /// used to create the buttons that handle navigating between nodes via user answers
    func makeButton(name: String, buttonImage:String, answer: ScamDetectAnswer) -> some View {
        return AnyView(Button {
            do {
                try node = QuestionTree.instance.answerQuestion(givenAnswer: answer)
                chosenNodes.append(node)
                // last question nodes question is always an empty string.
                // if it finds this, go to the proper results page
                if (node.question == "") {
                    if (node.howToFix == "NOSCAM") {
                        changePage(isScam: false)
                    }
                    else {
                        changePage()
                    }
                }
                currQuestion = node.id.0
            }
            catch {
                changePage()
            }
        } label: {
            Label("\(name)", systemImage: "\(buttonImage)")
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
                            .font(.system(size: uSizes.sWidth * 0.065))
                            .multilineTextAlignment(.center)
                        Rectangle()
                            .frame(width: uSizes.sWidth * 0.60, height: 3)
                            .border(.black, width: 3)
                    }
                    .padding(50)
                }
                .frame(width:  uSizes.sWidth * 0.70, height: uSizes.sHeight * 0.4)
                .padding(0)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 4, x: 4, y: 5)
                
                VStack {
                    makeButton(name: "Yes", buttonImage: "checkmark", answer: ScamDetectAnswer.Yes).padding(.bottom, 8)
                    makeButton(name: "No", buttonImage: "xmark", answer: ScamDetectAnswer.No)
                    Spacer().frame(height: uSizes.sHeight * 0.1)
                }
                .frame(width: uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.45)
                .padding(0)
            }
        }
    }
}

