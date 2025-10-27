//
//  MockPokemonDoDia.swift
//  pokedex2
//
//  Created by Paulo Satiro on 25/10/25.
//

import SwiftUI

struct MockPokemonDoDia: View {

    var body: some View {
        Group {
            ZStack{
                    ZStack {
                        Rectangle()
                            .frame(width: 329, height: 380)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.black, .gray],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(15)
                        
                        
                            VStack {
                                
                                    Text("Pokemon do Dia")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                
                                
                                VStack {
                                    Image("placeholder")
                                        .resizable()
                                        .frame(width: 200, height: 200)
                                    
                                    
                                    
                                    HStack(spacing: 150) {
                                        VStack {
                                            Text("Charmander")
                                                .bold()
                                                .foregroundStyle(Color.white)
                                            Text("Nº: 0000")
                                                .foregroundStyle(Color.white)
                                                .opacity(0.5)
                                                .font(Font.system(size: 10))
                                        }
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 55, height: 22)
                                                .foregroundStyle(.gray)
                                                .cornerRadius(20)
                                            Text("Fogo")
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.black)
                                                .font(Font.system(size: 10))
                                        }
                                    }
                                }
                            }
                        }
                    
                }
            }
    }
}
