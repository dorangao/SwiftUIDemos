import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var name = "John"
    @StateObject private var viewModel = ViewModel()
    @AppStorage("username") var username: String = "Guest"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("State Variable Example")
                VStack {
                    Text("Count: \(count)")
                    Button("Increment") {
                        count += 1
                    }
                }
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(8)
                
                Text("Binding Example")
                ChildView(name: $name)
                    .padding()
                    .background(Color.green.opacity(0.1))
                    .cornerRadius(8)
                
                Text("ObservedObject Example")
                Text("User: \(viewModel.title)")
                    .padding()
                    .background(Color.orange.opacity(0.1))
                    .cornerRadius(8)
                
                Text("AppStorage Example")
                Text("Welcome, \(username)!")
                    .padding()
                    .background(Color.purple.opacity(0.1))
                    .cornerRadius(8)
                
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("SwiftUI State Management")
        }
        .environmentObject(Settings())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
