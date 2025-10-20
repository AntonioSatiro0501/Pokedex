import SwiftUI

struct MainView: View {
    @State public var resut: PokemonResults?
    

    
    var body: some View {
        TabView{
            MockView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
    }
}

#Preview {
    MainView()
}
