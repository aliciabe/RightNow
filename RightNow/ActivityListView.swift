import SwiftUI
import SwiftData

struct ActivityListView: View {
    @Query private var activities: [Activity]
    @Query private var inventoryEntries: [InventoryEntry]
    @Query private var activityHistory: [ActivityHistory]

    let ageInMonths: Int
    let selectedSkills: Set<DevelopmentSkill>
    let energyLevel: EnergyLevel?
    let maxMessLevel: Int
    var surpriseMe: Bool = false

    private var recommendations: [ScoredActivity] {
        var results = RecommendationEngine.recommend(
            activities: activities,
            inventoryEntries: inventoryEntries,
            activityHistory: activityHistory,
            ageInMonths: ageInMonths,
            selectedSkills: selectedSkills,
            energyLevel: energyLevel,
            maxMessLevel: maxMessLevel
        )
        if surpriseMe {
            results.shuffle()
            return Array(results.prefix(1))
        }
        return results
    }

    var body: some View {
        Group {
            if recommendations.isEmpty {
                ContentUnavailableView(
                    "No activities found",
                    systemImage: "sparkles",
                    description: Text("Try adjusting your filters or updating your household items.")
                )
            } else {
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(recommendations) { scored in
                            NavigationLink {
                                ActivityDetailView(activity: scored.activity)
                            } label: {
                                ActivityCard(scored: scored)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationTitle(surpriseMe ? "Surprise!" : "Activities")
    }
}

// MARK: - Activity Card

struct ActivityCard: View {
    let scored: ScoredActivity

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(scored.activity.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                Spacer()
                Label("\(scored.activity.estimatedMinutes) min", systemImage: "clock")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Text(scored.activity.subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.leading)

            HStack(spacing: 12) {
                Label(scored.activity.energyLevel.displayName, systemImage: scored.activity.energyLevel.icon)
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.secondaryFill)
                    .clipShape(Capsule())

                Label(scored.activity.ageRangeText, systemImage: "person.crop.circle")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Spacer()

                materialBadge
            }

            FlowLayout(spacing: 4) {
                ForEach(scored.activity.skills) { skill in
                    Text(skill.displayName)
                        .font(.caption2)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 2)
                        .background(.orange.opacity(0.15))
                        .foregroundStyle(.orange)
                        .clipShape(Capsule())
                }
            }
        }
        .padding()
        .background(Color.cardSurface)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.06), radius: 4, y: 2)
    }

    @ViewBuilder
    private var materialBadge: some View {
        if scored.totalMaterials > 0 {
            HStack(spacing: 2) {
                Image(systemName: scored.availableMaterials == scored.totalMaterials
                      ? "checkmark.circle.fill" : "circle.dotted")
                    .foregroundStyle(scored.availableMaterials == scored.totalMaterials ? .green : .orange)
                Text("\(scored.availableMaterials)/\(scored.totalMaterials) items")
            }
            .font(.caption)
        } else {
            Text("No items needed")
                .font(.caption)
                .foregroundStyle(.green)
        }
    }
}
