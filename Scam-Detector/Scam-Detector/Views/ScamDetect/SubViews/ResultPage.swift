import Foundation
import SwiftUI

// Refs:
// SwiftUI enumeration of an sequence:
// https://developer.apple.com/documentation/swiftui/binding/enumerated()

struct ResultPage: View {
    
    /// a state variable for indicating fix view to be showed if button is clicked
    @State private var showFixView = false
    /// a state variable for indicating help view to be showed if button is clicked
    @State private var showHelpView = false
    /// a state variable for indicating home view to be showed if button is clicked
    @State private var showHomeView = false
    /// a state variable for indicating which content to show after questions are answered
    @Binding var badResults: Bool
    /// a state variable that contains information on how to fix a bad result
    @State var howToFixTexts = [String]()
    /// array of qtnodes that contains the answered questions and how to fix information
    @Binding var nodes: [QTNode]
    
    var body: some View {
        
        VStack() {
            Text("Result").font(.system(size: 42)).bold().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.1, alignment: .bottom)
                .padding(.bottom, 10)
            
            if (!badResults) {
                VStack() {
                    Text("Looks Good!").font(.system(size: 36)).bold().padding(.top, 30)
                    Text("it's not a scam").font(.system(size: 32))
                    Image("checkMarkImg").resizable().scaledToFit().frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.30)
                }
                .frame(width: UIScreen.main.bounds.width * 0.80, height: UIScreen.main.bounds.height * 0.65, alignment: .top)
                .background(.white)
                .cornerRadius(20.0)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                Spacer()
                
                NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(self.showHomeView), isActive: $showHomeView) {EmptyView()}
                Button {self.showHomeView = true} label: {
                    Label("Home", systemImage: "house.circle").padding()
                }.buttonStyle(CustomButton())
                
            } else {
                VStack() {
                    Text("It's most likely a").font(.system(size: 30)).padding(.top, 25)
                    Text("SCAM").font(.system(size: 35)).bold()
                    Image("exclamationMarkImg").resizable().scaledToFit().frame(width: UIScreen.main.bounds.width * 0.60, height: UIScreen.main.bounds.height * 0.22)
                }
                .frame(width: UIScreen.main.bounds.width * 0.80, height: UIScreen.main.bounds.height * 0.45, alignment: .top)
                .background(.white)
                .cornerRadius(20.0)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                Spacer().frame(height: 10)
                
                NavigationLink(destination: HowToFix(howToFixValues: $howToFixTexts), isActive: $showFixView) {EmptyView()}
                Button {
                    guard nodes.contains(where: { node in
                        node.howToFix.isEmpty
                    }) else {
                        howToFixTexts.append("bad result occured...")
                        return
                    }
                    for (_, j) in nodes.enumerated() {
                        howToFixTexts.append(j.howToFix)
                    }
                    self.showFixView = true
                } label: {
                    Label("How To Fix", systemImage: "questionmark.circle")
                }.buttonStyle(CustomButton()).padding(7)
                
                NavigationLink(destination: EmergencyContact(), isActive: $showHelpView) {EmptyView()}
                Button {self.showHelpView = true} label: {
                    Label("Get Help", systemImage: "phone.circle")
                }.buttonStyle(CustomButton()).padding(7)
                
                NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(self.showHomeView), isActive: $showHomeView) {EmptyView()}
                Button {self.showHomeView = true} label: {
                    Label("Home", systemImage: "house.circle")
                }.buttonStyle(CustomButton()).padding(7)
            }
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(GradientBackground().blueGradient)
        .padding()
    }
}
