import Foundation
import SwiftUI

struct CustomTextField: View {
    
    // Used as variable to store string typed in text field
    @Binding var ourText: String
    // placeholder for text field
    let placeholder: Text
    // image to be displayed as icon on text field
    let systemImage: String = "magnifyingglass"
    
    var body: some View{
        ZStack(alignment: .leading){
            
            if ourText.isEmpty{
                placeholder
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .padding(.leading, 40)
                    .font(.system(size: 25))
            }
            
            HStack(spacing: 10){
                Image(systemName: systemImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                TextField("", text: $ourText)
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .frame(width: uSizes.sWidth*0.9, height: uSizes.sHeight*0.16)
        .padding(.horizontal)
        .foregroundColor(.black)
    }
}

// Refrence
// https://www.youtube.com/watch?v=qa9fzIxQb7o&t=289s
