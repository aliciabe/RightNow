import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var profiles: [ChildProfile]
    @Query private var activities: [Activity]
    @Query private var inventoryEntries: [InventoryEntry]
    @Query private var activityHistory: [ActivityHistory]
    @Query private var favorites: [FavoriteActivity]

    @State private var searchText = ""
    @State private var selectedSkills: Set<DevelopmentSkill> = []
    @State private var selectedEnergy: EnergyLevel? = nil
    @State private var maxMessLevel: Int = 3

    private var profile: ChildProfile? { profiles.first }

    private var favoriteIDs: Set<UUID> {
        Set(favorites.map(\.activityID))
    }

    private var recommendedActivities: [ScoredActivity] {
        guard let profile else { return [] }
        var results = RecommendationEngine.recommend(
            activities: activities,
            inventoryEntries: inventoryEntries,
            activityHistory: activityHistory,
            ageInMonths: profile.ageInMonths,
            selectedSkills: selectedSkills,
            energyLevel: selectedEnergy,
            maxMessLevel: maxMessLevel
        )
        if !searchText.isEmpty {
            let query = searchText.lowercased()
            results = results.filter {
                $0.activity.title.lowercased().contains(query) ||
                $0.activity.subtitle.lowercased().contains(query)
            }
        }
        return results
    }

    private var hasActiveFilters: Bool {
        !selectedSkills.isEmpty || selectedEnergy != nil || maxMessLevel < 3
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    headerSection
                    searchBar
                    filtersSection
                    resultsCount

                    ForEach(recommendedActivities) { scored in
                        NavigationLink {
                            ActivityDetailView(activity: scored.activity)
                        } label: {
                            HomeActivityCard(
                                activity: scored.activity,
                                isFavorite: favoriteIDs.contains(scored.activity.id),
                                onToggleFavorite: { toggleFavorite(scored.activity.id) }
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

    // MARK: - Sections

    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Hello there,")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            let name = profile?.name ?? "your toddler"
            Text("What should we do with \(name)?")
                .font(.title2.bold())
        }
    }

    private var searchBar: some View {
        HStack(spacing: 10) {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.secondary)
            TextField("Search activities...", text: $searchText)
                .font(.subheadline)
        }
        .padding(12)
        .background(Color.cardSurface)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.04), radius: 4, y: 2)
    }

    private var filtersSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Skills")
                    .font(.caption.bold())
                    .foregroundStyle(.secondary)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 6) {
                        ForEach(DevelopmentSkill.allCases) { skill in
                            Button {
                                if selectedSkills.contains(skill) {
                                    selectedSkills.remove(skill)
                                } else {
                                    selectedSkills.insert(skill)
                                }
                            } label: {
                                HStack(spacing: 4) {
                                    Image(systemName: skill.icon)
                                        .font(.caption2)
                                    Text(skill.displayName)
                                        .font(.caption)
                                }
                                .padding(.horizontal, 10)
                                .padding(.vertical, 6)
                                .background(selectedSkills.contains(skill) ? Color.green : Color.cardSurface)
                                .foregroundStyle(selectedSkills.contains(skill) ? .white : .primary)
                                .clipShape(Capsule())
                                .shadow(color: .black.opacity(0.04), radius: 2, y: 1)
                            }
                        }
                    }
                }
            }

            VStack(alignment: .leading, spacing: 6) {
                Text("Energy")
                    .font(.caption.bold())
                    .foregroundStyle(.secondary)
                HStack(spacing: 6) {
                    ForEach(EnergyLevel.allCases) { level in
                        Button {
                            selectedEnergy = selectedEnergy == level ? nil : level
                        } label: {
                            HStack(spacing: 4) {
                                Image(systemName: level.icon)
                                    .font(.caption2)
                                Text(level.displayName)
                                    .font(.caption)
                            }
                            .padding(.horizontal, 10)
                            .padding(.vertical, 6)
                            .background(selectedEnergy == level ? Color.green : Color.cardSurface)
                            .foregroundStyle(selectedEnergy == level ? .white : .primary)
                            .clipShape(Capsule())
                            .shadow(color: .black.opacity(0.04), radius: 2, y: 1)
                        }
                    }
                }
            }

            VStack(alignment: .leading, spacing: 6) {
                Text("Mess tolerance")
                    .font(.caption.bold())
                    .foregroundStyle(.secondary)
                Picker("", selection: $maxMessLevel) {
                    Text("None").tag(0)
                    Text("A little").tag(1)
                    Text("Some").tag(2)
                    Text("Bring it on").tag(3)
                }
                .pickerStyle(.segmented)
            }

            if hasActiveFilters {
                Button {
                    selectedSkills = []
                    selectedEnergy = nil
                    maxMessLevel = 3
                } label: {
                    Text("Reset filters")
                        .font(.caption)
                        .foregroundStyle(.green)
                }
            }
        }
    }

    private var resultsCount: some View {
        Text("\(recommendedActivities.count) activities found")
            .font(.caption)
            .foregroundStyle(.green)
    }

    // MARK: - Actions

    private func toggleFavorite(_ activityID: UUID) {
        if let existing = favorites.first(where: { $0.activityID == activityID }) {
            modelContext.delete(existing)
        } else {
            modelContext.insert(FavoriteActivity(activityID: activityID))
        }
    }
}

// MARK: - Activity Card

struct HomeActivityCard: View {
    let activity: Activity
    let isFavorite: Bool
    let onToggleFavorite: () -> Void

    private var energyDotColor: Color {
        switch activity.energyLevel {
        case .high: .red
        case .medium: .orange
        case .low: .green
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .top) {
                Text(activity.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                Spacer()
                Button(action: onToggleFavorite) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundStyle(isFavorite ? .red : .gray.opacity(0.4))
                }
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Text(activity.subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(2)
                .multilineTextAlignment(.leading)

            HStack(spacing: 4) {
                Image(systemName: "clock")
                Text("\(activity.estimatedMinutes) min")
                Text("\u{00B7}")
                Text("\(activity.materialIDs.count) items needed")
            }
            .font(.caption)
            .foregroundStyle(.secondary)

            tagRow
        }
        .padding()
        .background(Color.cardSurface)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
    }

    private var tagRow: some View {
        let allTags: [(String, Color)] = [(activity.energyLevel.displayName, energyDotColor)]
            + activity.skills.map { ($0.displayName, Color.green) }
        let visible = Array(allTags.prefix(3))
        let overflow = allTags.count - visible.count

        return FlowLayout(spacing: 6) {
            ForEach(Array(visible.enumerated()), id: \.offset) { _, tag in
                ActivityTag(text: tag.0, dotColor: tag.1)
            }
            if overflow > 0 {
                Text("+\(overflow) more")
                    .font(.caption2)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.secondaryFill)
                    .clipShape(Capsule())
            }
        }
    }
}

// MARK: - Tag

struct ActivityTag: View {
    let text: String
    let dotColor: Color

    var body: some View {
        HStack(spacing: 4) {
            Circle()
                .fill(dotColor)
                .frame(width: 6, height: 6)
            Text(text)
                .font(.caption2)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(dotColor.opacity(0.1))
        .clipShape(Capsule())
    }
}

