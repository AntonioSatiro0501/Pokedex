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

#Preview {
    SearchView()
}
