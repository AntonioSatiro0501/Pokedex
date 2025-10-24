import SwiftUI

import SwiftUI

struct MockView: View {
    let numero = 1...151
    var body: some View {
            ScrollView{
                Spacer(minLength: 80)
                LazyVStack{
                    ForEach(numero, id: \.self) { index in
                        ZStack{
                            ZStack {
                                Rectangle()
                                    .frame(width: 329, height: 114)
                                    .foregroundStyle(
                                        LinearGradient(
                                            colors: [.black, .gray],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                    .cornerRadius(30)
                                
                                HStack(spacing: 101) {
                                    VStack(alignment: .leading,spacing: 30){
                                        VStack(alignment: .leading){
                                            Text("Charmander")
                                                .bold()
                                                .foregroundStyle(Color.white)
                                            
                                            Text("Nº: 0000")
                                                .foregroundStyle(Color.white)
                                                .opacity(0.5)
                                                .font(Font.system(size: 10))
                                        }
                                        HStack{
                                            
                                            
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 55, height: 22)
                                                    .foregroundStyle(.gray)
                                                    .cornerRadius(20)
                                                Text(" ")
                                                    .fontWeight(.semibold)
                                                    .foregroundStyle(Color.white)
                                                    .font(Font.system(size: 10))
                                                
                                            }
                                        }
                                    }
                                    
                                    Image("Charmander")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
struct MockView_Previews: PreviewProvider {
    static var previews: some View {
        MockView()
    }
}
