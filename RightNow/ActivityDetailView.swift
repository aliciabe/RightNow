import SwiftUI
import SwiftData

struct ActivityDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var inventoryEntries: [InventoryEntry]
    @Query private var householdItems: [HouseholdItem]
    @Query private var profiles: [ChildProfile]
    @Query private var favorites: [FavoriteActivity]

    let activity: Activity
    @State private var showingToast = false

    private var isFavorite: Bool {
        favorites.contains { $0.activityID == activity.id }
    }

    private var inventoryMap: [UUID: InventoryStatus] {
        Dictionary(uniqueKeysWithValues: inventoryEntries.map { ($0.itemID, $0.status) })
    }

    private var itemMap: [UUID: HouseholdItem] {
        Dictionary(uniqueKeysWithValues: householdItems.map { ($0.id, $0) })
    }

    private var allMaterialsReady: Bool {
        activity.materialIDs.allSatisfy { inventoryMap[$0] == .has }
    }

    private var energyDotColor: Color {
        switch activity.energyLevel {
        case .high: .red
        case .medium: .orange
        case .low: .green
        }
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                titleSection
                tagsSection
                materialsCard
                completeButton
                stepsCard
                variationsSection
                safetySection
            }
            .padding()
        }
        .background(Color.secondaryFill.opacity(0.3))
        .navigationTitle("")
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarVisibility(.visible, for: .tabBar)
        #endif
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button(action: toggleFavorite) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundStyle(isFavorite ? .red : .gray)
                }
            }
        }
        .overlay(alignment: .top) {
            if showingToast {
                HStack(spacing: 8) {
                    Image(systemName: "checkmark.circle.fill")
                    Text("Great job spending time together!")
                }
                .font(.subheadline.weight(.medium))
                .foregroundStyle(.green)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color.cardSurface)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.15), radius: 8, y: 4)
                .transition(.move(edge: .top).combined(with: .opacity))
                .padding(.top, 8)
            }
        }
    }

    // MARK: - Sections

    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(activity.title)
                .font(.title2.bold())
            Text(activity.subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }

    private var tagsSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            FlowLayout(spacing: 8) {
                DetailTag(
                    text: activity.energyLevel.displayName,
                    icon: activity.energyLevel.icon,
                    dotColor: energyDotColor
                )
                DetailTag(
                    text: "\(activity.estimatedMinutes) min",
                    icon: "clock",
                    dotColor: .secondary
                )
                DetailTag(
                    text: activity.ageRangeText,
                    icon: nil,
                    dotColor: .secondary
                )
            }
            FlowLayout(spacing: 8) {
                ForEach(activity.skills) { skill in
                    DetailTag(
                        text: skill.displayName,
                        icon: nil,
                        dotColor: .green
                    )
                }
            }
        }
    }

    @ViewBuilder
    private var materialsCard: some View {
        if !activity.materialIDs.isEmpty {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "link")
                        .foregroundStyle(.secondary)
                    Text("Materials Needed")
                        .font(.headline)
                    Spacer()
                    if allMaterialsReady {
                        HStack(spacing: 4) {
                            Image(systemName: "checkmark")
                                .font(.caption.bold())
                            Text("Ready")
                                .font(.subheadline.weight(.medium))
                        }
                        .foregroundStyle(.green)
                    }
                }

                ForEach(Array(activity.materialIDs.enumerated()), id: \.element) { index, materialID in
                    if index > 0 {
                        Divider()
                    }
                    MaterialDetailRow(
                        item: itemMap[materialID],
                        status: inventoryMap[materialID] ?? .unknown,
                        onStatusChanged: { newStatus in
                            updateInventory(itemID: materialID, status: newStatus)
                        }
                    )
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color.cardSurface)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
        }
    }

    private var stepsCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("How to Play")
                .font(.headline)

            ForEach(Array(activity.steps.enumerated()), id: \.offset) { index, step in
                HStack(alignment: .top, spacing: 12) {
                    Text("\(index + 1)")
                        .font(.caption.bold())
                        .foregroundStyle(.white)
                        .frame(width: 24, height: 24)
                        .background(Color.green)
                        .clipShape(Circle())
                    Text(step)
                        .font(.subheadline)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.cardSurface)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
    }

    private var variationsSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            if let easier = activity.easierVariation {
                VariationCard(title: "Make it easier", icon: "arrow.down.circle", text: easier)
            }
            if let harder = activity.harderVariation {
                VariationCard(title: "Make it harder", icon: "arrow.up.circle", text: harder)
            }
            if let stretch = activity.stretchVariation {
                VariationCard(title: "Keep it going", icon: "arrow.right.circle", text: stretch)
            }
        }
    }

    @ViewBuilder
    private var safetySection: some View {
        if !activity.safetyNotes.isEmpty {
            VStack(alignment: .leading, spacing: 8) {
                Text("Safety Notes")
                    .font(.headline)
                ForEach(activity.safetyNotes, id: \.self) { note in
                    HStack(alignment: .top, spacing: 8) {
                        Image(systemName: "exclamationmark.triangle.fill")
                            .foregroundStyle(.yellow)
                            .font(.caption)
                        Text(note)
                            .font(.subheadline)
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.cardSurface)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
        }
    }

    private var completeButton: some View {
        Button(action: markCompleted) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("We did this")
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.green)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }

    // MARK: - Actions

    private func updateInventory(itemID: UUID, status: InventoryStatus) {
        if let entry = inventoryEntries.first(where: { $0.itemID == itemID }) {
            entry.status = status
            entry.updatedAt = .now
        } else {
            modelContext.insert(InventoryEntry(itemID: itemID, status: status))
        }
    }

    private func toggleFavorite() {
        if let existing = favorites.first(where: { $0.activityID == activity.id }) {
            modelContext.delete(existing)
        } else {
            modelContext.insert(FavoriteActivity(activityID: activity.id))
        }
    }

    private func markCompleted() {
        if let profile = profiles.first {
            let history = ActivityHistory(activityID: activity.id, childProfileID: profile.id)
            modelContext.insert(history)
            withAnimation(.spring(duration: 0.4)) { showingToast = true }
            Task {
                try? await Task.sleep(for: .seconds(2))
                withAnimation(.easeOut(duration: 0.3)) { showingToast = false }
            }
        }
    }
}

// MARK: - Detail Tag

private struct DetailTag: View {
    let text: String
    let icon: String?
    let dotColor: Color

    var body: some View {
        HStack(spacing: 4) {
            if let icon {
                Image(systemName: icon)
                    .font(.caption2)
                    .foregroundStyle(dotColor)
            } else {
                Circle()
                    .fill(dotColor)
                    .frame(width: 6, height: 6)
            }
            Text(text)
                .font(.caption)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 6)
        .background(dotColor.opacity(0.1))
        .clipShape(Capsule())
    }
}

// MARK: - Material Row

private struct MaterialDetailRow: View {
    let item: HouseholdItem?
    let status: InventoryStatus
    let onStatusChanged: (InventoryStatus) -> Void

    var body: some View {
        HStack(spacing: 10) {
            Circle()
                .fill(status == .has ? Color.green : Color.orange)
                .frame(width: 8, height: 8)

            Text(item?.canonicalName ?? "Unknown item")
                .font(.subheadline)

            Spacer()

            HStack(spacing: 6) {
                actionButton(for: .has, icon: "checkmark", activeColor: .green)
                actionButton(for: .doesNotHave, icon: "xmark", activeColor: .orange)
                actionButton(for: .excluded, icon: "nosign", activeColor: .red)
            }
        }
    }

    private func actionButton(for targetStatus: InventoryStatus, icon: String, activeColor: Color) -> some View {
        let isActive = status == targetStatus
        return Button {
            onStatusChanged(targetStatus)
        } label: {
            Circle()
                .fill(isActive ? activeColor : Color.gray.opacity(0.12))
                .frame(width: 32, height: 32)
                .overlay {
                    Image(systemName: icon)
                        .font(.caption2.bold())
                        .foregroundStyle(isActive ? .white : .gray.opacity(0.45))
                }
        }
    }
}

// MARK: - Variation Card

struct VariationCard: View {
    let title: String
    let icon: String
    let text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Image(systemName: icon)
                Text(title)
                    .font(.subheadline.bold())
            }
            .foregroundStyle(.green)
            Text(text)
                .font(.subheadline)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.cardSurface)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
    }
}
