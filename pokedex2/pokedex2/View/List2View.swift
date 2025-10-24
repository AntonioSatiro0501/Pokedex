//
//  List2View.swift
//  pokedex2
//
//  Created by Aluno Mack on 23/10/25.
//

import SwiftUI

struct List2View: View {
    @State private var pokemons: [PokemonUrl]?
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            Group{
                if let pokemons{
                    ScrollView{
                        LazyVStack{
                            ForEach(pokemons) { pokemon in
                                NavigationLink{
                                    PokemonView(pokemon: pokemon)
                                    
                                    
                                } label: {
                                    ExposicaoPokemon(pokemon: pokemon)
                                }
                                .onAppear{
                                    print(pokemon.name)
                                }
                            }
                        }
                    }
                }
            }
        }
        .searchable(text: $searchText)
        .task{
            do{
                pokemons = try await getResults()
            } catch {
                print("Dados errados")
            }
        }
    }
    
}

struct List2View_Previews: PreviewProvider {
    static var previews: some View {
        List2View()
    }
}
