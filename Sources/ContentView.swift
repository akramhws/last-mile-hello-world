import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        ZStack {
            AppConfig.backgroundColor.ignoresSafeArea()
            VStack(spacing: 28) {
                Text(AppConfig.heroEmoji)
                    .font(.system(size: 72))

                Text(AppConfig.heroLabel)
                    .font(.system(.title, design: AppConfig.fontDesign).bold())
                    .foregroundStyle(AppConfig.primaryColor)

                Text("Count: \(count)")
                    .font(.system(.title2, design: AppConfig.fontDesign))
                    .foregroundStyle(.secondary)

                Button(action: { count += 1 }) {
                    Text(AppConfig.buttonLabel)
                        .font(.system(.headline, design: AppConfig.fontDesign))
                        .padding(.horizontal, 32)
                        .padding(.vertical, 14)
                        .background(
                            LinearGradient(
                                colors: [AppConfig.primaryColor, AppConfig.accentColor],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                        .shadow(color: AppConfig.primaryColor.opacity(0.4), radius: 8, y: 4)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
