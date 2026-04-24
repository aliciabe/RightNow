import SwiftUI
import SwiftData

struct FavoritesView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var favorites: [FavoriteActivity]
    @Query private var activities: [Activity]

    private var favoriteIDs: Set<UUID> {
        Set(favorites.map(\.activityID))
    }

    private var favoriteActivities: [Activity] {
        let idSet = favoriteIDs
        return activities.filter { idSet.contains($0.id) }
    }

    var body: some View {
        NavigationStack {
            Group {
                if favoriteActivities.isEmpty {
                    ContentUnavailableView(
                        "No favorites yet",
                        systemImage: "heart",
                        description: Text("Tap the heart on any activity to save it here.")
                    )
                } else {
                    ScrollView {
                        LazyVStack(spacing: 12) {
                            ForEach(favoriteActivities) { activity in
                                NavigationLink {
                                    ActivityDetailView(activity: activity)
                                } label: {
                                    HomeActivityCard(
                                        activity: activity,
                                        isFavorite: true,
                                        onToggleFavorite: { removeFavorite(activity.id) }
                                    )
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding()
                    }
                    .background(Color.secondaryFill.opacity(0.3))
                }
            }
            .navigationTitle("Favorites")
        }
    }

    private func removeFavorite(_ activityID: UUID) {
        if let existing = favorites.first(where: { $0.activityID == activityID }) {
            modelContext.delete(existing)
        }
    }
}
