import SwiftUI

struct SearchView: View {
    @State private var searchText = ""

        var body: some View {
            NavigationStack {
                Text("Searching for \(searchText)")
            }
            .searchable(text: $searchText)
        }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
