import SwiftUI

struct secondView: View {
    @State public var resut: PokemonResults?
    

    
    var body: some View {
        TabView{
            Mock2View()
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

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}
