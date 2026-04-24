import SwiftUI
import SwiftData

struct InventoryView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \HouseholdItem.canonicalName) private var items: [HouseholdItem]
    @Query private var inventoryEntries: [InventoryEntry]

    @State private var activeFilter: ItemFilter = .all

    enum ItemFilter: CaseIterable {
        case all, has, missing

        var label: String {
            switch self {
            case .all: "All"
            case .has: "Have"
            case .missing: "Missing"
            }
        }

        var icon: String {
            switch self {
            case .all: "shippingbox.fill"
            case .has: "checkmark"
            case .missing: "xmark"
            }
        }
    }

    private var inventoryMap: [UUID: InventoryStatus] {
        Dictionary(uniqueKeysWithValues: inventoryEntries.map { ($0.itemID, $0.status) })
    }

    private var haveCount: Int {
        items.filter { inventoryMap[$0.id] == .has }.count
    }

    private var missingCount: Int {
        items.count - haveCount
    }

    private var filteredItems: [HouseholdItem] {
        items.filter { item in
            let status = inventoryMap[item.id] ?? .unknown
            switch activeFilter {
            case .all: return true
            case .has: return status == .has
            case .missing: return status != .has
            }
        }
    }

    private var groupedItems: [(ItemCategory, [HouseholdItem])] {
        let grouped = Dictionary(grouping: filteredItems) { $0.category }
        return ItemCategory.allCases.compactMap { category in
            guard let catItems = grouped[category], !catItems.isEmpty else { return nil }
            return (category, catItems)
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Tell us what you have so we can suggest the right activities")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)

                    HStack(spacing: 10) {
                        InventoryStatCard(count: haveCount, label: "Have", color: .green)
                        InventoryStatCard(count: missingCount, label: "Missing", color: .orange)
                    }

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(ItemFilter.allCases, id: \.self) { filter in
                                InventoryFilterChip(
                                    filter: filter,
                                    isSelected: activeFilter == filter
                                ) {
                                    withAnimation(.easeInOut(duration: 0.2)) {
                                        activeFilter = filter
                                    }
                                }
                            }
                        }
                    }

                    ForEach(groupedItems, id: \.0) { category, categoryItems in
                        VStack(alignment: .leading, spacing: 8) {
                            Text(category.displayName.uppercased())
                                .font(.caption.bold())
                                .foregroundStyle(.secondary)
                                .padding(.leading, 4)

                            VStack(spacing: 0) {
                                ForEach(Array(categoryItems.enumerated()), id: \.element.id) { index, item in
                                    ItemActionRow(
                                        item: item,
                                        status: inventoryMap[item.id] ?? .unknown,
                                        onStatusChanged: { newStatus in
                                            updateStatus(itemID: item.id, status: newStatus)
                                        }
                                    )
                                    if index < categoryItems.count - 1 {
                                        Divider()
                                            .padding(.leading, 36)
                                    }
                                }
                            }
                            .background(Color.cardSurface)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
                        }
                    }

                    if filteredItems.isEmpty {
                        VStack(spacing: 8) {
                            Image(systemName: "tray")
                                .font(.largeTitle)
                                .foregroundStyle(.secondary)
                            Text("No items match this filter")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 40)
                    }
                }
                .padding()
            }
            .background(Color.secondaryFill.opacity(0.5))
            .navigationTitle("Household Items")
        }
    }

    private func updateStatus(itemID: UUID, status: InventoryStatus) {
        if let entry = inventoryEntries.first(where: { $0.itemID == itemID }) {
            entry.status = status
            entry.updatedAt = .now
        } else {
            modelContext.insert(InventoryEntry(itemID: itemID, status: status))
        }
    }
}

// MARK: - Stat Card

private struct InventoryStatCard: View {
    let count: Int
    let label: String
    let color: Color

    var body: some View {
        VStack(spacing: 2) {
            Text("\(count)")
                .font(.title2.bold())
                .foregroundStyle(color)
            Text(label)
                .font(.caption)
                .foregroundStyle(color)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(color.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - Filter Chip

private struct InventoryFilterChip: View {
    let filter: InventoryView.ItemFilter
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 6) {
                Image(systemName: filter.icon)
                    .font(.caption)
                Text(filter.label)
                    .font(.subheadline.weight(.medium))
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .background(isSelected ? Color.green : Color.secondaryFill)
            .foregroundStyle(isSelected ? .white : .primary)
            .clipShape(Capsule())
        }
    }
}

// MARK: - Item Row

private struct ItemActionRow: View {
    let item: HouseholdItem
    let status: InventoryStatus
    let onStatusChanged: (InventoryStatus) -> Void

    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .fill(dotColor)
                .frame(width: 10, height: 10)

            Text(item.canonicalName)
                .font(.body)

            Spacer()

            HStack(spacing: 6) {
                actionButton(for: .has, icon: "checkmark", activeColor: .green)
                actionButton(for: .doesNotHave, icon: "xmark", activeColor: .orange)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }

    private var dotColor: Color {
        status == .has ? .green : .orange
    }

    private func actionButton(for targetStatus: InventoryStatus, icon: String, activeColor: Color) -> some View {
        let isActive = (targetStatus == .has) ? (status == .has) : (status != .has)
        return Button {
            onStatusChanged(targetStatus)
        } label: {
            Circle()
                .fill(isActive ? activeColor : Color.gray.opacity(0.12))
                .frame(width: 36, height: 36)
                .overlay {
                    Image(systemName: icon)
                        .font(.caption.bold())
                        .foregroundStyle(isActive ? .white : .gray.opacity(0.45))
                }
        }
    }
}
