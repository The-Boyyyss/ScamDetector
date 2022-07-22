import Foundation
import SwiftUI

func KeyboardDismiss(){
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
}

// Dismiss keyboard https://stackoverflow.com/questions/60013190/textfield-swiftui-dismiss-keyboard
