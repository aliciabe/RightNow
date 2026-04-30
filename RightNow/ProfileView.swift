import SwiftUI
import SwiftData

struct ProfileView: View {
    @Query private var profiles: [ChildProfile]
    @Query(sort: \ActivityHistory.completedAt, order: .reverse) private var activityHistory: [ActivityHistory]
    @Query private var activities: [Activity]
    @Query private var inventoryEntries: [InventoryEntry]

    @State private var showingEditSheet = false

    private var profile: ChildProfile? { profiles.first }

    private var activityMap: [UUID: Activity] {
        Dictionary(uniqueKeysWithValues: activities.map { ($0.id, $0) })
    }

    private var trackedItemsCount: Int {
        inventoryEntries.filter { $0.status != .unknown }.count
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                if let profile {
                    VStack(spacing: 16) {
                        profileCard(profile)
                        statsRow
                        menuCard
                    }
                    .padding()
                }
            }
            .background(Color.secondaryFill.opacity(0.5))
            .navigationTitle("Profile")
            .sheet(isPresented: $showingEditSheet) {
                if let profile {
                    EditProfileSheet(profile: profile)
                }
            }
        }
    }

    // MARK: - Profile Card

    private func profileCard(_ profile: ChildProfile) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 14) {
                Circle()
                    .fill(Color.green.opacity(0.15))
                    .frame(width: 56, height: 56)
                    .overlay {
                        Image(systemName: "figure.and.child.holdinghands")
                            .font(.title2)
                            .foregroundStyle(.green)
                    }

                VStack(alignment: .leading, spacing: 2) {
                    Text(profile.name ?? "Your toddler")
                        .font(.title2.bold())
                    Text(ageDescription(for: profile))
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                Spacer()

                Button { showingEditSheet = true } label: {
                    Image(systemName: "slider.horizontal.3")
                        .font(.title3)
                        .foregroundStyle(.primary.opacity(0.4))
                }
            }
            .padding()

            Divider()
                .padding(.horizontal)

            VStack(alignment: .leading, spacing: 10) {
                Text("Adjust \(profile.name ?? "your toddler")'s age")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Button { adjustAge(profile: profile, byMonths: 1) } label: {
                    Image(systemName: "chevron.up")
                        .font(.caption.bold())
                        .foregroundStyle(.secondary)
                }
                .padding(.leading, 4)

                Text(shortAgeText(for: profile))
                    .font(.title.bold())

                Button { adjustAge(profile: profile, byMonths: -1) } label: {
                    Image(systemName: "chevron.down")
                        .font(.caption.bold())
                        .foregroundStyle(.secondary)
                }
                .padding(.leading, 4)
            }
            .padding()
        }
        .background(Color.cardSurface)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
    }

    // MARK: - Stats Row

    private var statsRow: some View {
        HStack(spacing: 12) {
            ProfileStatCard(value: activityHistory.count, label: "Activities done", color: .green)
            ProfileStatCard(value: trackedItemsCount, label: "Items tracked", color: .orange)
        }
    }

    // MARK: - Activity History Card

    private var menuCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "clock.arrow.circlepath")
                    .foregroundStyle(.green)
                Text("Activity History")
                    .font(.headline)
                Spacer()
                Text("\(activityHistory.count)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            if activityHistory.isEmpty {
                Text("No activities completed yet")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .padding(.vertical, 8)
            } else {
                ForEach(activityHistory) { entry in
                    if let activity = activityMap[entry.activityID] {
                        NavigationLink {
                            ActivityDetailView(activity: activity)
                        } label: {
                            HStack(spacing: 12) {
                                Circle()
                                    .fill(Color.green.opacity(0.15))
                                    .frame(width: 36, height: 36)
                                    .overlay {
                                        Image(systemName: "checkmark")
                                            .font(.caption.bold())
                                            .foregroundStyle(.green)
                                    }

                                VStack(alignment: .leading, spacing: 2) {
                                    Text(activity.title)
                                        .font(.subheadline.weight(.medium))
                                        .foregroundStyle(.primary)
                                    Text(entry.completedAt.formatted(date: .abbreviated, time: .omitted))
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                }

                                Spacer()

                                Image(systemName: "chevron.right")
                                    .font(.caption)
                                    .foregroundStyle(.secondary.opacity(0.5))
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .padding()
        .background(Color.cardSurface)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
    }

    // MARK: - Helpers

    private func ageDescription(for profile: ChildProfile) -> String {
        let total = profile.ageInMonths
        let y = total / 12
        let m = total % 12
        if y > 0 && m > 0 {
            return "\(y) year\(y == 1 ? "" : "s"), \(m) month\(m == 1 ? "" : "s") old"
        } else if y > 0 {
            return "\(y) year\(y == 1 ? "" : "s") old"
        }
        return "\(m) month\(m == 1 ? "" : "s") old"
    }

    private func shortAgeText(for profile: ChildProfile) -> String {
        let total = profile.ageInMonths
        let y = total / 12
        let m = total % 12
        if y > 0 { return "\(y)y \(m)m" }
        return "\(m)m"
    }

    private func adjustAge(profile: ChildProfile, byMonths: Int) {
        guard let newDate = Calendar.current.date(
            byAdding: .month, value: -byMonths, to: profile.birthDate
        ) else { return }
        let ageAfter = Calendar.current.dateComponents([.month], from: newDate, to: .now).month ?? 0
        if ageAfter >= 1 && ageAfter <= 48 {
            profile.birthDate = newDate
        }
    }
}

// MARK: - Stat Card

private struct ProfileStatCard: View {
    let value: Int
    let label: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("\(value)")
                .font(.title.bold())
                .foregroundStyle(color)
            Text(label)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.cardSurface)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
    }
}

// MARK: - Menu Row

private struct ProfileMenuRow: View {
    let icon: String
    let label: String
    let count: Int?
    let color: Color

    var body: some View {
        HStack(spacing: 14) {
            Circle()
                .fill(color.opacity(0.12))
                .frame(width: 40, height: 40)
                .overlay {
                    Image(systemName: icon)
                        .foregroundStyle(color)
                }

            Text(label)
                .font(.body)

            Spacer()

            if let count {
                Text("\(count)")
                    .foregroundStyle(.secondary)
            }

            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundStyle(Color.secondary.opacity(0.5))
        }
        .padding(.horizontal)
        .padding(.vertical, 14)
    }
}

// MARK: - Edit Sheet

private struct EditProfileSheet: View {
    @Environment(\.dismiss) private var dismiss
    @Bindable var profile: ChildProfile
    @State private var name: String = ""
    @State private var birthDate: Date = .now

    var body: some View {
        NavigationStack {
            Form {
                TextField("Name (optional)", text: $name)
                    .autocorrectionDisabled()
                    .onChange(of: name) {
                        profile.name = name.isEmpty ? nil : name
                    }

                DatePicker("Birth date", selection: $birthDate, in: ...Date.now, displayedComponents: .date)
                    .onChange(of: birthDate) {
                        profile.birthDate = birthDate
                    }
            }
            .navigationTitle("Edit Profile")
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") { dismiss() }
                }
            }
        }
    }

    init(profile: ChildProfile) {
        self.profile = profile
        _name = State(initialValue: profile.name ?? "")
        _birthDate = State(initialValue: profile.birthDate)
    }
}
