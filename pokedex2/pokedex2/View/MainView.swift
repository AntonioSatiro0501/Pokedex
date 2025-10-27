//
//  MainView.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

struct MainView: View {
    @State public var resut: PokemonResults?
    @State private var constante = true

    
    var body: some View {
        Mock3View()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
