//
//  Estagio2.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

import SwiftUI

struct Estagio2: View {
    @State private var pokemons: [PokemonUrl]?
    @State private var indicesE2: [Int] = [2,5,8,11,14,17,20,22,24,26,28,30,33,36,38,40,42,44,47,49,51,53,55,57,59,61,64,67,70,73,75,78,80,82,85,87,89,91,93,97,99,101,103,105,110,112,117,119,121,130,134,135,136,139,141,148]
    var body: some View {
        NavigationStack{
            Group{
                if let pokemons{
                    ScrollView{
                        LazyVStack{
                            ForEach(indicesE2, id: \.self) { indice in
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


struct Estagio2_Previews: PreviewProvider {
    static var previews: some View {
        Estagio2()
    }
}
