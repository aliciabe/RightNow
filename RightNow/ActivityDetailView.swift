import SwiftUI
import SwiftData

struct ActivityDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var inventoryEntries: [InventoryEntry]
    @Query private var householdItems: [HouseholdItem]
    @Query private var profiles: [ChildProfile]

    let activity: Activity
    @State private var showingCompletedAlert = false

    private var inventoryMap: [UUID: InventoryStatus] {
        Dictionary(uniqueKeysWithValues: inventoryEntries.map { ($0.itemID, $0.status) })
    }

    private var itemMap: [UUID: HouseholdItem] {
        Dictionary(uniqueKeysWithValues: householdItems.map { ($0.id, $0) })
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                headerSection
                skillsSection
                materialsSection
                stepsSection
                variationsSection
                safetySection
                completeButton
            }
            .padding()
        }
        .navigationTitle(activity.title)
        #if os(iOS)
        .navigationBarTitleDisplayMode(.large)
        #endif
        .alert("Nice!", isPresented: $showingCompletedAlert) {
            Button("OK") { }
        } message: {
            Text("Great job spending time together!")
        }
    }

    // MARK: - Sections

    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(activity.subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            HStack(spacing: 16) {
                Label("\(activity.estimatedMinutes) min", systemImage: "clock")
                Label(activity.energyLevel.displayName, systemImage: activity.energyLevel.icon)
            }
            .font(.caption)
            .foregroundStyle(.secondary)

            HStack(spacing: 16) {
                Label(activity.ageRangeText, systemImage: "person.crop.circle")
                Label("Setup: \(activity.setupMinutes) min", systemImage: "timer")
                Label(activity.supervision.displayName, systemImage: "eye")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
        }
    }

    private var skillsSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Skills encouraged")
                .font(.headline)
            FlowLayout(spacing: 6) {
                ForEach(activity.skills) { skill in
                    HStack(spacing: 4) {
                        Image(systemName: skill.icon)
                        Text(skill.displayName)
                    }
                    .font(.caption)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(.orange.opacity(0.15))
                    .foregroundStyle(.orange)
                    .clipShape(Capsule())
                }
            }
        }
    }

    @ViewBuilder
    private var materialsSection: some View {
        if !activity.materialIDs.isEmpty {
            VStack(alignment: .leading, spacing: 8) {
                Text("What you'll need")
                    .font(.headline)

                ForEach(activity.materialIDs, id: \.self) { materialID in
                    MaterialRow(
                        item: itemMap[materialID],
                        status: inventoryMap[materialID] ?? .unknown,
                        onStatusChanged: { newStatus in
                            updateInventory(itemID: materialID, status: newStatus)
                        }
                    )
                }
            }
        }
    }

    private var stepsSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("How to play")
                .font(.headline)

            ForEach(Array(activity.steps.enumerated()), id: \.offset) { index, step in
                HStack(alignment: .top, spacing: 12) {
                    Text("\(index + 1)")
                        .font(.subheadline.bold())
                        .foregroundStyle(.orange)
                        .frame(width: 24)
                    Text(step)
                        .font(.subheadline)
                }
                .padding(.vertical, 2)
            }
        }
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
                Text("Safety notes")
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
        }
    }

    private var completeButton: some View {
        Button(action: markCompleted) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("We did this!")
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.green)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        .padding(.top)
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

    private func markCompleted() {
        if let profile = profiles.first {
            let history = ActivityHistory(activityID: activity.id, childProfileID: profile.id)
            modelContext.insert(history)
            showingCompletedAlert = true
        }
    }
}

// MARK: - Subviews

struct MaterialRow: View {
    let item: HouseholdItem?
    let status: InventoryStatus
    let onStatusChanged: (InventoryStatus) -> Void

    var body: some View {
        HStack {
            Image(systemName: status.icon)
                .foregroundStyle(StatusColor.color(for: status))
            Text(item?.canonicalName ?? "Unknown item")
                .font(.subheadline)
            Spacer()
            Menu {
                Button { onStatusChanged(.has) } label: {
                    Label("I have this", systemImage: "checkmark.circle.fill")
                }
                Button { onStatusChanged(.doesNotHave) } label: {
                    Label("I don't have this", systemImage: "xmark.circle")
                }
                Button(role: .destructive) { onStatusChanged(.excluded) } label: {
                    Label("Never suggest", systemImage: "nosign")
                }
                Button { onStatusChanged(.unknown) } label: {
                    Label("Not sure", systemImage: "questionmark.circle")
                }
            } label: {
                Text(status.displayName)
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(StatusColor.color(for: status).opacity(0.15))
                    .foregroundStyle(StatusColor.color(for: status))
                    .clipShape(Capsule())
            }
        }
        .padding(.vertical, 4)
    }
}

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
            .foregroundStyle(.orange)
            Text(text)
                .font(.subheadline)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.secondaryFill)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
