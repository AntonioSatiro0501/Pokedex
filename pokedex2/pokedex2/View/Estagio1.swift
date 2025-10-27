//
//  Estagio1.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

struct Estagio1: View {
    @State private var pokemons: [PokemonUrl]?
    @State private var indicesE1: [Int] = [1,4,7,10,13,19,21,23,25,27,29,32,35,37,39,41,43,46,48,50,52,54,56,58,60,63,66,69,72,74,77,79,81,83,84,86,88,90,92,95,96,98,100,102,104,106,107,108,109,111,113,114,115,116,117,118,120,122,123,124,125,126,127,128,129,131,132,133,137,138,140,142,143,144,145,146,147,150,151]
    var body: some View {
        NavigationStack{
            Group{
                if let pokemons{
                    ScrollView{
                        LazyVStack{
                            ForEach(indicesE1, id: \.self) { indice in
                                NavigationLink{
                                    PokemonView(pokemon: pokemons[indice - 1])
                                    
                                    
                                } label: {
                                    ExposicaoPokemon(pokemon: pokemons[indice - 1])
                                }
                                .onAppear{
                                    print(pokemons[indice - 1].name)
                                }
                            }
                        }
                    }
                }
            }
        }
        .task{
            do{
                pokemons = try await getResults()
            } catch {
                print("Dados errados")
            }
        }
    }
    
}


struct Estagio1_Previews: PreviewProvider {
    static var previews: some View {
        Estagio1()
    }
}
