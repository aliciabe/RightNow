import SwiftUI
import SwiftData

@main
struct RightNowApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            ChildProfile.self,
            HouseholdItem.self,
            InventoryEntry.self,
            Activity.self,
            FavoriteActivity.self,
            ActivityHistory.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
