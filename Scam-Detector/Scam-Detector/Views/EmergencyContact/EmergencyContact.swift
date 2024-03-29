import SwiftUI

/// displays emergency contact information 
struct EmergencyContact: View {
    /// Saved emergency contact name
    @AppStorage(StorageKeys.emergencyName.rawValue) private var emergencyName = ""
    /// Saved emergency contact number
    @AppStorage(StorageKeys.emergencyNumber.rawValue) private var emergencyNumber = ""
    /// Navigation variable to add a contact page
    @State var showAddPage: Bool = false
    
    var body: some View {
        VStack(alignment: .center){
            Text("Emergency Contact")
            .multilineTextAlignment(.center)
            .font(.system(size: uSizes.sWidth * 0.1, weight: .bold))
            .padding(.bottom, uSizes.sHeight * 0.04)
            .padding(.top, uSizes.sHeight*0.05)
            Spacer().frame(height: uSizes.sHeight * 0.15)
            
            if emergencyName.isEmpty || emergencyNumber.isEmpty {
                
                NavigationLink(destination: EmergencyContact_Add(name: $emergencyName, number: $emergencyNumber, isFinished: $showAddPage), isActive: $showAddPage){
                    Button("Add Contact"){
                        showAddPage = true
                    }
                    .buttonStyle(CustomButton())
                }
            }
            else {
                VStack{
                    Button("Call\n\(emergencyName)"){
                        let tel = "tel://";
                        let formatted = tel + emergencyNumber;
                        guard let call = URL(string: formatted) else { return };
                        UIApplication.shared.open(call)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.61)
                    .padding()
                    .multilineTextAlignment(.center)
                    .background(Color.customDarkBlue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: 28, weight: .bold, design: .default))
                    .shadow(color: .gray, radius: 4, x: 0, y: 5)
                    
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: EmergencyContact_Add(name: $emergencyName, number: $emergencyNumber, isFinished: $showAddPage), isActive: $showAddPage){
                        Button{
                            showAddPage = true;
                        } label: {
                            Label("Update", systemImage: "info.circle")
                        }
                        .buttonStyle(CustomButton())
                    }
                }
            }
        }
        .padding(.horizontal, uSizes.sWidth * 0.05)
        .padding(.bottom, uSizes.sHeight * 0.2)
        .frame(width: uSizes.sWidth, height: uSizes.sHeight, alignment: .top)
        .background(GradientBackground().blueGradient)
    }
}

// REFERENCE
// Make a Phone Call https://localcoder.org/how-to-create-tappable-url-phone-number-in-swiftui
