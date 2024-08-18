import SwiftUI

class ViewModel: ObservableObject {
    @Published var title = "Hello, World!"
}

struct ChildView: View {
    @Binding var name: String

    var body: some View {
        TextField("Name", text: $name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}
