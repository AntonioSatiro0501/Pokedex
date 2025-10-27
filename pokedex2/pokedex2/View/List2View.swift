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
                            ForEach(searchResults) { pokemon in
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
                    .searchable(text: $searchText)
                }
            }
        }
//        .searchable(text: $searchText)
        
        
        .task{
            do{
                pokemons = try await getResults()
            } catch {
                print("Dados errados")
            }
        }
        
    }
        var searchResults: [PokemonUrl]{
            if let pokemons{
                if searchText.isEmpty{
                    return pokemons
                } else{
                    return pokemons.filter {$0.name.capitalized.contains(searchText)}
                }
            }else {
                if searchText.isEmpty{
                    return [PokemonUrl(
                        name: "pikachu",
                        url: "https://pokeapi.co/api/v2/pokemon/25"
                    )]
                }else{
                    return [PokemonUrl(name: "pikachu",
                                       url: "https://pokeapi.co/api/v2/pokemon/25"
                                   )]
                }
            }
        }
    
}

struct List2View_Previews: PreviewProvider {
    static var previews: some View {
        List2View()
    }
}
