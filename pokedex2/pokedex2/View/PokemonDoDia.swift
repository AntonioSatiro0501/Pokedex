//
//  PokemonDoDia.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

struct PokemonDoDia: View {
    @State public var detalhes: PokemonInfo?
    @State public var url: String?
    let pokemon: PokemonUrl
    var body: some View {
        Group {
            ZStack{
                if let detalhes{
                    let cor1 = TypeEnum(rawValue: detalhes.types[0].type.name)?.color ?? .black
                    ZStack {
                        Rectangle()
                            .frame(width: 329, height: 380)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.black, cor1],
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                            )
                            .cornerRadius(15)
                        
                        
                            VStack {
                                
                                    Text("Pokemon do Dia")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                
                                
                                VStack {
                                    if let url, let urlS = URL(string: url) {
                                        AsyncImage(url: urlS, content: { img in
                                            if let imgg = img.image {
                                                imgg
                                                    .resizable()
                                                    .frame(width: 200, height: 200)
                                            }else{
                                                Image("placeholder")
                                                    .resizable()
                                                    .frame(width: 200, height: 200)
                                            }
                                        })
                                    }
                                    
                                    
                                    
                                    HStack(spacing: 150) {
                                        VStack {
                                            Text("\(detalhes.name.capitalized)")
                                                .bold()
                                                .foregroundStyle(Color.white)
                                            Text("Nº: "+"\(detalhes.id)")
                                                .foregroundStyle(Color.white)
                                                .opacity(0.9)
                                                .font(Font.system(size: 10))
                                        }
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 55, height: 22)
                                                .foregroundStyle(cor1)
                                                .cornerRadius(20)
                                            Text("\(detalhes.types[0].type.name.capitalized)")
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.black)
                                                .font(Font.system(size: 10))
                                        }
                                    }
                                }
                            }
                        }
                    
                } else {
                    MockPokemonDoDia()
                }
            }
        }
            .task{
                do{
                    let detalhe = try await getPokemonInfo(from: pokemon.url)
                    self.url = detalhe.sprites.frontDefault
                    self.detalhes = detalhe
                } catch{
                    print("Erro ao buscar sprite pokemon \(pokemon)")
                }
            }

    }
}

struct PokemonDoDia_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDoDia(
            pokemon: PokemonUrl(
                name: "pikachu",
                url: "https://pokeapi.co/api/v2/pokemon/25"
            )
        )
    }
}
