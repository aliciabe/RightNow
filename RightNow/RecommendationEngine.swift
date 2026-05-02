import Foundation
import SwiftData

struct ScoredActivity: Identifiable {
    let activity: Activity
    let score: Double
    let availableMaterials: Int
    let totalMaterials: Int
    var id: UUID { activity.id }
}

struct RecommendationEngine {

    static func recommend(
        activities: [Activity],
        inventoryEntries: [InventoryEntry],
        activityHistory: [ActivityHistory],
        ageInMonths: Int,
        selectedSkills: Set<DevelopmentSkill>,
        energyLevel: EnergyLevel?,
        maxMessLevel: Int
    ) -> [ScoredActivity] {
        let inventoryMap = Dictionary(uniqueKeysWithValues: inventoryEntries.map { ($0.itemID, $0.status) })

        return activities
            .filter { activity in
                activity.minAgeMonths <= ageInMonths + 3 && activity.maxAgeMonths >= ageInMonths - 3
            }
            .filter { activity in
                selectedSkills.isEmpty || !Set(activity.skills).isDisjoint(with: selectedSkills)
            }
            .filter { activity in
                energyLevel == nil || activity.energyLevel == energyLevel
            }
            .filter { activity in
                activity.messLevel <= maxMessLevel
            }
            .filter { activity in
                !activity.materialIDs.contains { inventoryMap[$0] == .excluded }
            }
            .filter { activity in
                activity.materialIDs.count <= 5 &&
                activity.setupMinutes <= 2 &&
                activity.setupComplexity < 3
            }
            .map { activity in
                let score = calculateScore(
                    activity: activity,
                    inventoryMap: inventoryMap,
                    activityHistory: activityHistory,
                    selectedSkills: selectedSkills,
                    ageInMonths: ageInMonths
                )
                let available = activity.materialIDs.filter { inventoryMap[$0] == .has }.count
                return ScoredActivity(
                    activity: activity,
                    score: score,
                    availableMaterials: available,
                    totalMaterials: activity.materialIDs.count
                )
            }
            .sorted { $0.score > $1.score }
    }

    private static func calculateScore(
        activity: Activity,
        inventoryMap: [UUID: InventoryStatus],
        activityHistory: [ActivityHistory],
        selectedSkills: Set<DevelopmentSkill>,
        ageInMonths: Int
    ) -> Double {
        var score = 0.0

        // Material availability (0–40 points)
        if activity.materialIDs.isEmpty {
            score += 40
        } else {
            let has = activity.materialIDs.filter { inventoryMap[$0] == .has }.count
            let unknown = activity.materialIDs.filter {
                let s = inventoryMap[$0]
                return s == .unknown || s == nil
            }.count
            let total = activity.materialIDs.count
            score += Double(has) / Double(total) * 30
            score += Double(unknown) / Double(total) * 10
        }

        // Skill match (0–25 points)
        if !selectedSkills.isEmpty {
            let matchCount = Set(activity.skills).intersection(selectedSkills).count
            score += Double(matchCount) / Double(selectedSkills.count) * 25
        } else {
            score += 15
        }

        // Novelty bonus (0–20 points)
        let history = activityHistory.filter { $0.activityID == activity.id }
        if history.isEmpty {
            score += 20
        } else if let last = history.max(by: { $0.completedAt < $1.completedAt }) {
            let daysSinceLast = Calendar.current.dateComponents([.day], from: last.completedAt, to: .now).day ?? 0
            score += min(Double(daysSinceLast) * 2, 20)
        }

        // Age sweet-spot bonus (0–10 points)
        let ageRange = activity.maxAgeMonths - activity.minAgeMonths
        if ageRange > 0 {
            let midpoint = activity.minAgeMonths + ageRange / 2
            let distance = abs(ageInMonths - midpoint)
            score += max(0, 10 - Double(distance))
        }

        // Duration bonus (0–5 points) — longer activities scored positively
        score += min(Double(activity.estimatedMinutes) / 9.0, 5.0)

        return score
    }
}
