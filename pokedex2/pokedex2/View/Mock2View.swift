import SwiftUI

struct Mock2View: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                Text("Estágios Evolutivos")
                    .bold()
                    .font(.title)
                    .position(x: 200, y: 30)
            }
                    
            GeometryReader { geometry in
                Rectangle()
                    .frame(width: 1000, height: 4)
                    .foregroundColor(.black)
                    .position(x: 0, y: -85)
            }
            
            GeometryReader { geometry in
                ZStack {
                    Rectangle()
                        .frame(width: 329, height: 114)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.black, .yellow],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(30)
                    
                    HStack(spacing: 101) {
                        VStack(alignment: .leading,spacing: 30){
                            VStack(alignment: .leading){
                                Text("Estágio 1")
                                    .bold()
                                    .foregroundStyle(Color.white)
                                    .font(.title)
                            }
                        }
                    }
                }
                .position(x: 195, y: -80)
            }
            
            GeometryReader { geometry in
                ZStack {
                    Rectangle()
                        .frame(width: 329, height: 114)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.black, .orange],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(30)
                    
                    HStack(spacing: 101) {
                        VStack(alignment: .leading,spacing:30) {
                            VStack(alignment: .leading) {
                                Text("Estágio 2")
                                    .bold()
                                    .foregroundStyle(Color.white)
                                    .font(.title)
                            }
                        }
                    }
                }
                .position(x: 195, y: -100)
            }
            
            GeometryReader { geometry in
                ZStack {
                    Rectangle()
                        .frame(width: 329, height: 114)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.black, .red],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(30)
                    
                    HStack(spacing: 101) {
                        VStack(alignment: .leading,spacing:30) {
                            VStack(alignment: .leading) {
                                Text("Estágio 3")
                                    .bold()
                                    .foregroundStyle(Color.white)
                                    .font(.title)
                            }
                        }
                    }
                }
                .position(x: 195, y: -120)
            }
        }
    }
}


struct Mock2View_Previews: PreviewProvider {
    static var previews: some View {
        Mock2View()
    }
}
