import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var profiles: [ChildProfile]
    @Query private var favorites: [FavoriteActivity]

    var body: some View {
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
    }
}
