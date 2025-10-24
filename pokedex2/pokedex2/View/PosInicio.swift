//
//  PosInicio.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

struct PosInicio: View {
    var body: some View {
        TabView{
            Mock2View()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                    List2View()
                        .tabItem {
                            Label("Search", systemImage: "magnifyingglass")
                        }
                    
                }
    }
}

struct PosInicio_Previews: PreviewProvider {
    static var previews: some View {
        PosInicio()
    }
}
