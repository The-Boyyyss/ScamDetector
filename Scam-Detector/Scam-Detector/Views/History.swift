import SwiftUI

/// Bookmarks Page View
struct History: View {
    @EnvironmentObject var bookmarks: BookmarkManager
    @State var result: Result = Result(questions: [], date: Date.now, isAScam: true);
    @State var hasSelected: Bool = false
    
    var body: some View {
        VStack(alignment: .center){
            Text("Results History")
                .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                .font(.system(size: uSizes.sWidth*0.1, weight: .bold))
                .padding(.bottom, uSizes.sHeight*0.04)
                .padding(.top, uSizes.sHeight*0.05)
            Text("Saved Scam Detect Results")
                .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                .font(.system(size: uSizes.sWidth*0.08, weight: .semibold))
                .multilineTextAlignment(.center)
            
            Spacer().frame(height:uSizes.sHeight * 0.03)
            
            NavigationLink(destination: EmptyView(), isActive: $hasSelected){}
            List{
                Section(header: Text("Select a Date")
                    .font(.system(size:uSizes.sWidth * 0.04, weight: .bold))){
                        ForEach(bookmarks.bookmarkedResults, id: \.self) { res in
                        
                        HStack(){
                            Text(res.date, style: .date)
                                .font(.system(size: uSizes.sWidth * 0.06))
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.system(size: uSizes.sWidth * 0.06))
                        }
                        .contentShape(Rectangle())
                        .onTapGesture{
                            result = res;
                            hasSelected = true
                        }
                    }
                }
            }
            .border(Color.black)
            .listStyle(.plain)
            .environment(\.defaultMinListRowHeight, 70)
            Spacer().frame(height:uSizes.sHeight * 0.05)
        }
        .padding(.horizontal, uSizes.sWidth * 0.05)
        .padding(.bottom, uSizes.sHeight * 0.11)
        .frame(width: uSizes.sWidth, height: uSizes.sHeight, alignment: .top)
        .background(GradientBackground().blueGradient)
    }
}

// REFERENES
// Default row height https://stackoverflow.com/questions/58242342/swiftui-row-height-of-list-how-to-control
