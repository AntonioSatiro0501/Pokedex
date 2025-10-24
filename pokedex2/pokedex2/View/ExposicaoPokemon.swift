//
//  ExposicaoPokemon.swift
//  pokedex2
//
//  Created by Aluno Mack on 23/10/25.
//

import SwiftUI

struct ExposicaoPokemon: View {
    @State public var detalhes: PokemonInfo?
    @State public var url: String?
    let pokemon: PokemonUrl
    var body: some View {
        Group {
            ZStack{
                if let detalhes{
                    let cor1 = TypeEnum(rawValue: detalhes.types[0].type.name)?.color ?? .black
                    if detalhes.types.count == 1{
                        ZStack {
                            Rectangle()
                                .frame(width: 329, height: 114)
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.black, cor1],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(15)
                            
                            HStack(spacing: 70) {
                                VStack(alignment: .leading,spacing: 30){
                                    VStack(alignment: .leading){
                                        Text("\(detalhes.name)")
                                            .bold()
                                            .foregroundStyle(Color.white)
                                            .frame(maxWidth: 120, alignment: .leading)
                                        
                                        Text("N: \(detalhes.id)")
                                            .foregroundStyle(Color.white)
                                            .opacity(0.5)
                                            .font(Font.system(size: 10))
                                            .frame(maxWidth: 80, alignment: .leading)
                                    }
                                    HStack{
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 55, height: 22)
                                                .foregroundStyle(cor1)
                                                .cornerRadius(20)
                                            Text("\(detalhes.types[0].type.name)")
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.black)
                                                .font(Font.system(size: 10))
                                        }
                                    }
                                }
                                
                                
                                
                                if let url, let urlS = URL(string: url) {
                                    AsyncImage(url: urlS, content: { img in
                                        if let imgg = img.image {
                                            imgg
                                                .resizable()
                                                .frame(width: 100, height: 100)
                                        }else{
                                            Image("???")
                                                .resizable()
                                                .frame(width: 100, height: 100)
                                        }
                                    })
                                }
                            }
                        }
                    }
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

struct ExposicaoPokemon_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ExposicaoPokemon(
                pokemon: PokemonUrl(
                    name: "pikachu",
                    url: "https://pokeapi.co/api/v2/pokemon/25"
                )
            )
            
        }
    }
}
