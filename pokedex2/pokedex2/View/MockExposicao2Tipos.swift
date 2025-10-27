//
//  MockExposicao2Tipos.swift
//  pokedex2
//
//  Created by Paulo Satiro on 26/10/25.
//

import SwiftUI

struct MockExposicao2Tipos: View {
    var body: some View {
        VStack{
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
                    
                    HStack(spacing: 83) {
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
                                    Text("ret")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color.white)
                                        .font(Font.system(size: 10))
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 55, height: 22)
                                        .foregroundStyle(.gray)
                                        .cornerRadius(20)
                                    Text("ret")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color.white)
                                        .font(Font.system(size: 10))
                                }
                            }
                        }
                        
                        Image("placeholder")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                }
            }
            
            RetanguloPokemonView()
        }
    }
}

#Preview {
    MockExposicao2Tipos()
}
