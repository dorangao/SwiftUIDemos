import SwiftUI

struct DetailView: View {
    @EnvironmentObject var settings: Settings

    var body: some View {
        Text("Theme: \(settings.theme)")
            .font(.largeTitle)
            .padding()
    }
}
