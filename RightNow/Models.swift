import Foundation
import SwiftData

// MARK: - Enums

enum DevelopmentSkill: String, Codable, CaseIterable, Identifiable {
    case grossMotor, fineMotor, language, cognitive, socialEmotional, sensory, selfHelp

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .grossMotor: "Gross Motor"
        case .fineMotor: "Fine Motor"
        case .language: "Language"
        case .cognitive: "Cognitive"
        case .socialEmotional: "Social Emotional"
        case .sensory: "Sensory"
        case .selfHelp: "Self-Help"
        }
    }

    var icon: String {
        switch self {
        case .grossMotor: "figure.run"
        case .fineMotor: "hand.fingers.spread"
        case .language: "bubble.left.and.bubble.right"
        case .cognitive: "puzzlepiece"
        case .socialEmotional: "heart"
        case .sensory: "hand.raised.fingers.spread"
        case .selfHelp: "star"
        }
    }
}

enum EnergyLevel: String, Codable, CaseIterable, Identifiable {
    case low, medium, high

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .low: "Low Energy"
        case .medium: "Medium Energy"
        case .high: "High Energy"
        }
    }

    var icon: String {
        switch self {
        case .low: "leaf"
        case .medium: "flame"
        case .high: "bolt.fill"
        }
    }
}

enum InventoryStatus: String, Codable, CaseIterable {
    case has, doesNotHave, excluded, unknown

    var displayName: String {
        switch self {
        case .has: "Have it"
        case .doesNotHave: "Don't have"
        case .excluded: "Never suggest"
        case .unknown: "Not sure"
        }
    }

    var icon: String {
        switch self {
        case .has: "checkmark.circle.fill"
        case .doesNotHave: "xmark.circle"
        case .excluded: "nosign"
        case .unknown: "questionmark.circle"
        }
    }
}

enum Supervision: String, Codable {
    case armsReach, sameRoom, occasional

    var displayName: String {
        switch self {
        case .armsReach: "Stay within arm's reach"
        case .sameRoom: "Stay in the same room"
        case .occasional: "Check in occasionally"
        }
    }
}

enum ItemCategory: String, Codable, CaseIterable, Identifiable {
    case kitchen, bath, paper, fabric, toys, outdoor, food, tools, misc

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .kitchen: "Kitchen"
        case .bath: "Bath"
        case .paper: "Paper & Art"
        case .fabric: "Fabric"
        case .toys: "Toys"
        case .outdoor: "Outdoor"
        case .food: "Food"
        case .tools: "Tools"
        case .misc: "Other"
        }
    }

    var icon: String {
        switch self {
        case .kitchen: "fork.knife"
        case .bath: "bathtub"
        case .paper: "doc.plaintext"
        case .fabric: "tshirt"
        case .toys: "teddybear"
        case .outdoor: "leaf"
        case .food: "carrot"
        case .tools: "wrench.and.screwdriver"
        case .misc: "square.grid.2x2"
        }
    }
}

// MARK: - SwiftData Models

@Model final class ChildProfile {
    @Attribute(.unique) var id: UUID
    var name: String?
    var birthDate: Date
    var createdAt: Date

    var ageInMonths: Int {
        Calendar.current.dateComponents([.month], from: birthDate, to: .now).month ?? 0
    }

    init(id: UUID = UUID(), name: String? = nil, birthDate: Date, createdAt: Date = .now) {
        self.id = id
        self.name = name
        self.birthDate = birthDate
        self.createdAt = createdAt
    }
}

@Model final class HouseholdItem {
    @Attribute(.unique) var id: UUID
    var canonicalName: String
    var aliases: [String]
    var category: ItemCategory
    var commonality: Int

    init(id: UUID, canonicalName: String, aliases: [String] = [], category: ItemCategory, commonality: Int) {
        self.id = id
        self.canonicalName = canonicalName
        self.aliases = aliases
        self.category = category
        self.commonality = commonality
    }
}

@Model final class InventoryEntry {
    @Attribute(.unique) var itemID: UUID
    var status: InventoryStatus
    var updatedAt: Date

    init(itemID: UUID, status: InventoryStatus = .unknown, updatedAt: Date = .now) {
        self.itemID = itemID
        self.status = status
        self.updatedAt = updatedAt
    }
}

@Model final class Activity {
    @Attribute(.unique) var id: UUID
    var title: String
    var subtitle: String
    var minAgeMonths: Int
    var maxAgeMonths: Int
    var skills: [DevelopmentSkill]
    var energyLevel: EnergyLevel
    var materialIDs: [UUID]
    var stepsMarkdown: String
    var safetyNotes: [String]
    var easierVariation: String?
    var harderVariation: String?
    var stretchVariation: String?
    var estimatedMinutes: Int
    var setupMinutes: Int
    var setupComplexity: Int
    var messLevel: Int
    var supervision: Supervision

    var steps: [String] {
        stepsMarkdown.components(separatedBy: "\n").filter { !$0.isEmpty }
    }

    var ageRangeText: String {
        "\(minAgeMonths)–\(maxAgeMonths) months"
    }

    init(id: UUID, title: String, subtitle: String, minAgeMonths: Int, maxAgeMonths: Int,
         skills: [DevelopmentSkill], energyLevel: EnergyLevel, materialIDs: [UUID],
         stepsMarkdown: String, safetyNotes: [String], easierVariation: String? = nil,
         harderVariation: String? = nil, stretchVariation: String? = nil,
         estimatedMinutes: Int, setupMinutes: Int, setupComplexity: Int,
         messLevel: Int, supervision: Supervision) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.minAgeMonths = minAgeMonths
        self.maxAgeMonths = maxAgeMonths
        self.skills = skills
        self.energyLevel = energyLevel
        self.materialIDs = materialIDs
        self.stepsMarkdown = stepsMarkdown
        self.safetyNotes = safetyNotes
        self.easierVariation = easierVariation
        self.harderVariation = harderVariation
        self.stretchVariation = stretchVariation
        self.estimatedMinutes = estimatedMinutes
        self.setupMinutes = setupMinutes
        self.setupComplexity = setupComplexity
        self.messLevel = messLevel
        self.supervision = supervision
    }
}

@Model final class FavoriteActivity {
    @Attribute(.unique) var activityID: UUID
    var addedAt: Date

    init(activityID: UUID, addedAt: Date = .now) {
        self.activityID = activityID
        self.addedAt = addedAt
    }
}

@Model final class ActivityHistory {
    @Attribute(.unique) var id: UUID
    var activityID: UUID
    var childProfileID: UUID
    var completedAt: Date

    init(id: UUID = UUID(), activityID: UUID, childProfileID: UUID, completedAt: Date = .now) {
        self.id = id
        self.activityID = activityID
        self.childProfileID = childProfileID
        self.completedAt = completedAt
    }
}
