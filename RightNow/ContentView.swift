import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var profiles: [ChildProfile]
    @Query private var favorites: [FavoriteActivity]

    @State private var showingSplash = true

    var body: some View {
        ZStack {
            Group {
                if profiles.isEmpty {
                    OnboardingView()
                } else {
                    TabView {
                        HomeView()
                            .tabItem {
                                Label("Home", systemImage: "house")
                            }
                        FavoritesView()
                            .tabItem {
                                Label("Favorites", systemImage: "heart.fill")
                            }
                            .badge(favorites.count)
                        InventoryView()
                            .tabItem {
                                Label("Items", systemImage: "shippingbox")
                            }
                        ProfileView()
                            .tabItem {
                                Label("Profile", systemImage: "person")
                            }
                    }
                    .tint(.green)
                }
            }
            .task {
                SeedData.loadIfNeeded(context: modelContext)
            }

            if showingSplash {
                SplashScreen()
                    .transition(.opacity)
                    .zIndex(1)
            }
        }
        .task {
            try? await Task.sleep(for: .seconds(0.6))
            withAnimation(.easeOut(duration: 0.3)) {
                showingSplash = false
            }
        }
    }
}

private struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            Image("LaunchImage")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
        }
    }
}
