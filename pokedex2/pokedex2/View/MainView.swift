import SwiftUI

struct MainView: View {
    @State public var resut: PokemonResults?
    

    
    var body: some View {
        TabView{
            Mock3View()
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
