import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
        var body: some View {
            NavigationStack {
                Spacer()
                .navigationTitle("Busca")
                Text("\(searchText)")
                Spacer(minLength: 550)
            }
            .searchable(text: $searchText)
        }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
