//
//  Mock2View.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

struct Mock2View: View {

    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 15) {
                    Spacer()
                        .navigationTitle("Estágios Evolutivos")
                    
                    
                    NavigationLink(destination: List2View()){
                        ZStack{
                            
                            Rectangle()
                                .foregroundStyle(.black)
                                .opacity(0.05)
                                .frame(width: 330, height: 30)
                                .cornerRadius(20)
                            
                            HStack{
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(.gray)
                                
                                Text("Search")
                                    .foregroundStyle(.gray)
                                
                                Spacer()
                                    .frame(width: 240)
                                
                            }.padding(.leading)
                            
                            
                        }
                            
                    }

                    NavigationLink(destination: PokemonView( pokemon: PokemonUrl(
                        name: "pikachu",
                        url: "https://pokeapi.co/api/v2/pokemon/25"
                    ) )){
                        PokemonDoDia(pokemon: PokemonUrl(
                            name: "pikachu",
                            url: "https://pokeapi.co/api/v2/pokemon/25"
                        ))
                    }
                    NavigationLink(destination: Estagio1()) {
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
                                .cornerRadius(15)
                            
                            HStack {
                                VStack {
                                    Text("Estágio 1")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                }
                            }
                        }
                    }
                    
                    NavigationLink(destination: Estagio2()){
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
                                .cornerRadius(15)
                            
                            HStack {
                                VStack {
                                    Text("Estágio 2")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                }
                            }
                        }
                    }
                    
                    NavigationLink(destination: Estagio3()){
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
                            .cornerRadius(15)
                        
                        HStack {
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
            }
        }
    }
}


struct Mock2View_Previews: PreviewProvider {
    static var previews: some View {
        Mock2View()
    }
}
