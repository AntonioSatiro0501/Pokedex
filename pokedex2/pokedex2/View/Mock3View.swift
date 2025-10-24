import SwiftUI

struct Mock3View: View {
    @State private var isVisible = true
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: Mock2View()) {
                VStack {
                    ZStack {
                        Image("TelaFundo")
                            .blur(radius: 6)
                        VStack {
                            Spacer(minLength: 300)
                            Image("PokemonLogo2")
                                .resizable()
                                .frame(width: 650, height: 650)
                            Spacer()
                            Text("Toque para iniciar")
                                .font(.title)
                                .opacity(isVisible ? 1.0 : 0.2)
                                .foregroundColor(.black)
                            Spacer(minLength: 500)
                        }
                    }
                }
                .task {
                    Timer.scheduledTimer(withTimeInterval: 0.75, repeats: true) { _ in
                        withAnimation(.easeInOut(duration: 0.8)) {
                            isVisible.toggle()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Mock3View()
}
