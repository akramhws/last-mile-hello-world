import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 32) {
            Image(systemName: "star.fill")
                .font(.system(size: 72))
                .foregroundStyle(.yellow)

            Text("Hello, World!")
                .font(.largeTitle.bold())

            Text("Count: \(count)")
                .font(.title2)
                .foregroundStyle(.secondary)

            Button(action: { count += 1 }) {
                Label("Tap me", systemImage: "hand.tap")
                    .font(.headline)
                    .padding(.horizontal, 32)
                    .padding(.vertical, 14)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
