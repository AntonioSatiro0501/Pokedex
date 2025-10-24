import SwiftUI

struct MainView: View {
    @State public var resut: PokemonResults?
    @State private var constante = true

    
    var body: some View {
        Mock3View()
        SearchView()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
