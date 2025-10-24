//
//  Estagio3.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

import SwiftUI

struct Estagio3: View {
    @State private var pokemons: [PokemonUrl]?
    @State private var indicesE3: [Int] = [3,6,9,12,15,18,31,34,45,62,65,68,71,76,149]
    var body: some View {
        NavigationStack{
            Group{
                if let pokemons{
                    ScrollView{
                        LazyVStack{
                            ForEach(indicesE3, id: \.self) { indice in
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

struct Estagio3_Previews: PreviewProvider {
    static var previews: some View {
        Estagio3()
    }
}
