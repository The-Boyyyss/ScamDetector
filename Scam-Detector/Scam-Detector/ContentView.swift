import SwiftUI

struct ContentView: View {
    // Environment object for saved results
    let bookmark = BookmarkManager()
    var body: some View {
        NavigationView{
            SplashScreen()
        }.environmentObject(bookmark).navigationViewStyle(.stack)
            .onAppear{
                QTData.loadData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
