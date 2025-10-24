import Foundation
import SwiftUI

struct RetanguloPokemonView: View {
    @State public var poke: PokemonInfo
    @State public var url: URL
    @State public var cor: Color
    

    
    var body: some View {
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
                                    Text("\(poke.name)")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                            
                                    Text("N: \(poke.id)")
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
                                        Text("\(poke.types[0].type.name)")
                                            .fontWeight(.semibold)
                                            .foregroundStyle(Color.white)
                                            .font(Font.system(size: 10))
                                            }
                                        }
                                    }
                                    
                            AsyncImage(url: url, content: { img in
                                if let imgg = img.image {
                                    imgg
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                }
                            })
                                    }
                            }
        }
    }
}
