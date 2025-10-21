import SwiftUI

struct Mock2View: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                Text("Estágios Evolutivos")
                    .bold()
                    .font(.title)
                
                Rectangle()
                    .frame(width: 1000, height: 3)
                    .foregroundColor(.black)
                Spacer()
                
                NavigationLink(destination: MockView()) {
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
                        
                        HStack {
                            VStack {
                                VStack {
                                    Text("Estágio 1")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                }
                            }
                        }
                    }
                }
                
                NavigationLink(destination: MockView()) {
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
                        
                        HStack {
                            VStack {
                                VStack {
                                    Text("Estágio 2")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                }
                            }
                        }
                    }
                }
                
                NavigationLink(destination: MockView()) {
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
                        
                        HStack {
                            VStack {
                                VStack {
                                    Text("Estágio 3")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                }
                            }
                        }
                    }
                }
                Spacer(minLength: 170)
            }
        }
    }
}


struct Mock2View_Previews: PreviewProvider {
    static var previews: some View {
        Mock2View()
    }
}
