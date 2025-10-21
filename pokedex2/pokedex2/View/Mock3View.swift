import SwiftUI

struct Mock3View: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: Mock2View()) {
                VStack {
                    Spacer(minLength: 500)
                    
                    Text("Toque para iniciar")
                        .font(.title)
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Mock3View()
}
