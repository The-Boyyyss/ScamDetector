
import SwiftUI
import Foundation

struct scamDetect_Results:View {
    
    @Binding var response: [String]
    
    
    var body: some View {
        
        ZStack {
            
            VStack {
                Text("WHAAAAAAA")

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
                    VStack {
                        ForEach(response, id: \.self) {
                                Text("\($0)…")
                                .font(.system(size: uSizes.sWidth * 0.07))
                        }
                    }
                    
                }
                .frame(width:  uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.3, alignment: .center)
                
                VStack {
//                    for i in stride(from: 0, to: node.children.count, by: 1) {
//                        let btn = makeButton(name: node.answers[i], answer: i)
//                        btn()
//                    }
                    
                }
                .frame(width: uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.45, alignment: .bottom)
            }
        }
    }
}

