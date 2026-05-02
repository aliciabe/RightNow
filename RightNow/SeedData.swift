import Foundation
import SwiftData

enum SeedData {

    // MARK: - Item IDs

    enum ItemID {
        static let plasticBowl       = UUID(uuidString: "A1000001-0000-0000-0000-000000000001")!
        static let woodenSpoon       = UUID(uuidString: "A1000001-0000-0000-0000-000000000002")!
        static let measuringCups     = UUID(uuidString: "A1000001-0000-0000-0000-000000000003")!
        static let plasticCups       = UUID(uuidString: "A1000001-0000-0000-0000-000000000004")!
        static let muffinTin         = UUID(uuidString: "A1000001-0000-0000-0000-000000000005")!
        static let colander          = UUID(uuidString: "A1000001-0000-0000-0000-000000000006")!
        static let potWithLid        = UUID(uuidString: "A1000001-0000-0000-0000-000000000007")!
        static let plasticContainers = UUID(uuidString: "A1000001-0000-0000-0000-000000000008")!

        static let towels            = UUID(uuidString: "A2000001-0000-0000-0000-000000000001")!
        static let washcloths        = UUID(uuidString: "A2000001-0000-0000-0000-000000000002")!
        static let sponge            = UUID(uuidString: "A2000001-0000-0000-0000-000000000003")!

        static let paper             = UUID(uuidString: "A3000001-0000-0000-0000-000000000001")!
        static let cardboardBox      = UUID(uuidString: "A3000001-0000-0000-0000-000000000002")!
        static let paperTowelTubes   = UUID(uuidString: "A3000001-0000-0000-0000-000000000003")!
        static let tissuePaper       = UUID(uuidString: "A3000001-0000-0000-0000-000000000004")!
        static let tape              = UUID(uuidString: "A3000001-0000-0000-0000-000000000005")!
        static let crayons           = UUID(uuidString: "A3000001-0000-0000-0000-000000000006")!

        static let socks             = UUID(uuidString: "A4000001-0000-0000-0000-000000000001")!
        static let scarves           = UUID(uuidString: "A4000001-0000-0000-0000-000000000002")!
        static let blankets          = UUID(uuidString: "A4000001-0000-0000-0000-000000000003")!
        static let pillows           = UUID(uuidString: "A4000001-0000-0000-0000-000000000004")!

        static let balls             = UUID(uuidString: "A5000001-0000-0000-0000-000000000001")!
        static let blocks            = UUID(uuidString: "A5000001-0000-0000-0000-000000000002")!
        static let stuffedAnimals    = UUID(uuidString: "A5000001-0000-0000-0000-000000000003")!

        static let water             = UUID(uuidString: "A6000001-0000-0000-0000-000000000001")!

        static let dryPasta          = UUID(uuidString: "A7000001-0000-0000-0000-000000000001")!
        static let rice              = UUID(uuidString: "A7000001-0000-0000-0000-000000000002")!
        static let cereal            = UUID(uuidString: "A7000001-0000-0000-0000-000000000003")!

        static let clothespins       = UUID(uuidString: "A8000001-0000-0000-0000-000000000001")!

        static let laundryBasket     = UUID(uuidString: "A9000001-0000-0000-0000-000000000001")!
        static let cushions          = UUID(uuidString: "A9000001-0000-0000-0000-000000000002")!
        static let emptyBottles      = UUID(uuidString: "A9000001-0000-0000-0000-000000000003")!
        static let cottonBalls       = UUID(uuidString: "A9000001-0000-0000-0000-000000000004")!
    }

    // MARK: - Activity IDs

    enum ActivityID {
        static let ballRolling             = UUID(uuidString: "B0000001-0000-0000-0000-000000000001")!
        static let potAndSpoonBand         = UUID(uuidString: "B0000001-0000-0000-0000-000000000002")!
        static let sockMatching            = UUID(uuidString: "B0000001-0000-0000-0000-000000000003")!
        static let cardboardBoxFort        = UUID(uuidString: "B0000001-0000-0000-0000-000000000004")!
        static let waterPouring            = UUID(uuidString: "B0000001-0000-0000-0000-000000000005")!
        static let cottonBallTransfer      = UUID(uuidString: "B0000001-0000-0000-0000-000000000006")!
        static let blanketPeekaboo         = UUID(uuidString: "B0000001-0000-0000-0000-000000000007")!
        static let cushionObstacleCourse   = UUID(uuidString: "B0000001-0000-0000-0000-000000000008")!
        static let crayonScribbleArt       = UUID(uuidString: "B0000001-0000-0000-0000-000000000009")!
        static let pastaShapeSorting       = UUID(uuidString: "B0000001-0000-0000-0000-00000000000A")!
        static let laundryBasketRide       = UUID(uuidString: "B0000001-0000-0000-0000-00000000000B")!
        static let tissuePaperCrumple      = UUID(uuidString: "B0000001-0000-0000-0000-00000000000C")!
        static let stuffedAnimalHideSeek   = UUID(uuidString: "B0000001-0000-0000-0000-00000000000D")!
        static let spongeSqueezePlay       = UUID(uuidString: "B0000001-0000-0000-0000-00000000000E")!
        static let cardboardTubeTalker     = UUID(uuidString: "B0000001-0000-0000-0000-00000000000F")!
        static let cerealStacking          = UUID(uuidString: "B0000001-0000-0000-0000-000000000010")!
        static let pillowMountain          = UUID(uuidString: "B0000001-0000-0000-0000-000000000011")!
        static let cupTowerBuilding        = UUID(uuidString: "B0000001-0000-0000-0000-000000000012")!
        static let stuffedAnimalTeaParty   = UUID(uuidString: "B0000001-0000-0000-0000-000000000013")!
        static let feelingsFaces           = UUID(uuidString: "B0000001-0000-0000-0000-000000000014")!
        static let gentleTouchPractice     = UUID(uuidString: "B0000001-0000-0000-0000-000000000015")!
        static let sharingBackAndForth     = UUID(uuidString: "B0000001-0000-0000-0000-000000000016")!
        static let scarfDanceParty         = UUID(uuidString: "B0000001-0000-0000-0000-000000000017")!
        static let cozyCalmDown            = UUID(uuidString: "B0000001-0000-0000-0000-000000000018")!
        static let helperCleanupGame       = UUID(uuidString: "B0000001-0000-0000-0000-000000000019")!
        static let stuffedAnimalDoctor     = UUID(uuidString: "B0000001-0000-0000-0000-00000000001A")!
        static let copyCatGame             = UUID(uuidString: "B0000001-0000-0000-0000-00000000001B")!
        static let riceSensoryBin          = UUID(uuidString: "B0000001-0000-0000-0000-00000000001C")!
        static let byeByeWaveGame          = UUID(uuidString: "B0000001-0000-0000-0000-00000000001D")!
        static let towelWrapCuddle         = UUID(uuidString: "B0000001-0000-0000-0000-00000000001E")!

        // New activities (72 more)
        static let colanderDrumming         = UUID(uuidString: "B0000001-0000-0000-0000-00000000001F")!
        static let bottleShaker             = UUID(uuidString: "B0000001-0000-0000-0000-000000000020")!
        static let blanketSwing             = UUID(uuidString: "B0000001-0000-0000-0000-000000000021")!
        static let paperTearing             = UUID(uuidString: "B0000001-0000-0000-0000-000000000022")!
        static let sockPuppetShow           = UUID(uuidString: "B0000001-0000-0000-0000-000000000023")!
        static let muffinTinSorting         = UUID(uuidString: "B0000001-0000-0000-0000-000000000024")!
        static let ballTossTarget           = UUID(uuidString: "B0000001-0000-0000-0000-000000000025")!
        static let boxPushWalk              = UUID(uuidString: "B0000001-0000-0000-0000-000000000026")!
        static let washclothFolding         = UUID(uuidString: "B0000001-0000-0000-0000-000000000027")!
        static let tubeRolling              = UUID(uuidString: "B0000001-0000-0000-0000-000000000028")!
        static let spoonTransfer            = UUID(uuidString: "B0000001-0000-0000-0000-000000000029")!
        static let scarfPeekaboo            = UUID(uuidString: "B0000001-0000-0000-0000-00000000002A")!
        static let pillowSandwich           = UUID(uuidString: "B0000001-0000-0000-0000-00000000002B")!
        static let cerealPouring            = UUID(uuidString: "B0000001-0000-0000-0000-00000000002C")!
        static let blockBridge              = UUID(uuidString: "B0000001-0000-0000-0000-00000000002D")!
        static let bottleBowling            = UUID(uuidString: "B0000001-0000-0000-0000-00000000002E")!
        static let containerNesting         = UUID(uuidString: "B0000001-0000-0000-0000-00000000002F")!
        static let tapeLineWalk             = UUID(uuidString: "B0000001-0000-0000-0000-000000000030")!
        static let clothespinDrop           = UUID(uuidString: "B0000001-0000-0000-0000-000000000031")!
        static let animalSoundSafari        = UUID(uuidString: "B0000001-0000-0000-0000-000000000032")!
        static let waterPainting            = UUID(uuidString: "B0000001-0000-0000-0000-000000000033")!
        static let pastaDropGame            = UUID(uuidString: "B0000001-0000-0000-0000-000000000034")!
        static let blanketTug               = UUID(uuidString: "B0000001-0000-0000-0000-000000000035")!
        static let cupHidingGame            = UUID(uuidString: "B0000001-0000-0000-0000-000000000036")!
        static let spongeStacking           = UUID(uuidString: "B0000001-0000-0000-0000-000000000037")!
        static let basketballBasket         = UUID(uuidString: "B0000001-0000-0000-0000-000000000038")!
        static let stuffedAnimalParade      = UUID(uuidString: "B0000001-0000-0000-0000-000000000039")!
        static let paperBallToss            = UUID(uuidString: "B0000001-0000-0000-0000-00000000003A")!
        static let washclothPeekaboo        = UUID(uuidString: "B0000001-0000-0000-0000-00000000003B")!
        static let blockColorSort           = UUID(uuidString: "B0000001-0000-0000-0000-00000000003C")!
        static let tubeTelescopeWalk        = UUID(uuidString: "B0000001-0000-0000-0000-00000000003D")!
        static let measuringCupNest         = UUID(uuidString: "B0000001-0000-0000-0000-00000000003E")!
        static let cushionHop              = UUID(uuidString: "B0000001-0000-0000-0000-00000000003F")!
        static let riceShakerBottle         = UUID(uuidString: "B0000001-0000-0000-0000-000000000040")!
        static let scarfTugOfWar            = UUID(uuidString: "B0000001-0000-0000-0000-000000000041")!
        static let cottonBallBlow           = UUID(uuidString: "B0000001-0000-0000-0000-000000000042")!
        static let boxCar                   = UUID(uuidString: "B0000001-0000-0000-0000-000000000043")!
        static let spoonDrumRoll            = UUID(uuidString: "B0000001-0000-0000-0000-000000000044")!
        static let towelTugPlay             = UUID(uuidString: "B0000001-0000-0000-0000-000000000045")!
        static let pillowJump              = UUID(uuidString: "B0000001-0000-0000-0000-000000000046")!
        static let colanderWeaving          = UUID(uuidString: "B0000001-0000-0000-0000-000000000047")!
        static let bodyPartSong             = UUID(uuidString: "B0000001-0000-0000-0000-000000000048")!
        static let blanketSlide             = UUID(uuidString: "B0000001-0000-0000-0000-000000000049")!
        static let sockBallThrow            = UUID(uuidString: "B0000001-0000-0000-0000-00000000004A")!
        static let potLidMatching           = UUID(uuidString: "B0000001-0000-0000-0000-00000000004B")!
        static let paperCrownMaking         = UUID(uuidString: "B0000001-0000-0000-0000-00000000004C")!
        static let stuffedAnimalFeedTime    = UUID(uuidString: "B0000001-0000-0000-0000-00000000004D")!
        static let ballKicking              = UUID(uuidString: "B0000001-0000-0000-0000-00000000004E")!
        static let cupPhoneChat             = UUID(uuidString: "B0000001-0000-0000-0000-00000000004F")!
        static let clothespinMatch          = UUID(uuidString: "B0000001-0000-0000-0000-000000000050")!
        static let waterSplashPlay          = UUID(uuidString: "B0000001-0000-0000-0000-000000000051")!
        static let blockKnockDown           = UUID(uuidString: "B0000001-0000-0000-0000-000000000052")!
        static let tissueGhost              = UUID(uuidString: "B0000001-0000-0000-0000-000000000053")!
        static let pastaStringing           = UUID(uuidString: "B0000001-0000-0000-0000-000000000054")!
        static let pillowBalance            = UUID(uuidString: "B0000001-0000-0000-0000-000000000055")!
        static let laundryBasketTunnel      = UUID(uuidString: "B0000001-0000-0000-0000-000000000056")!
        static let crayonRubbing            = UUID(uuidString: "B0000001-0000-0000-0000-000000000057")!
        static let animalNightNight         = UUID(uuidString: "B0000001-0000-0000-0000-000000000058")!
        static let bowlDrumCircle           = UUID(uuidString: "B0000001-0000-0000-0000-000000000059")!
        static let sockHandPuppet           = UUID(uuidString: "B0000001-0000-0000-0000-00000000005A")!
        static let blanketFortReading       = UUID(uuidString: "B0000001-0000-0000-0000-00000000005B")!
        static let cerealNecklace           = UUID(uuidString: "B0000001-0000-0000-0000-00000000005C")!
        static let cottonBallPaint          = UUID(uuidString: "B0000001-0000-0000-0000-00000000005D")!
        static let tubeBallDrop             = UUID(uuidString: "B0000001-0000-0000-0000-00000000005E")!
        static let boxMailbox               = UUID(uuidString: "B0000001-0000-0000-0000-00000000005F")!
        static let towelCapeHero            = UUID(uuidString: "B0000001-0000-0000-0000-000000000060")!
        static let cushionStepping          = UUID(uuidString: "B0000001-0000-0000-0000-000000000061")!
        static let waterCupFill             = UUID(uuidString: "B0000001-0000-0000-0000-000000000062")!
        static let riceDrawing              = UUID(uuidString: "B0000001-0000-0000-0000-000000000063")!
        static let emptyFullGame            = UUID(uuidString: "B0000001-0000-0000-0000-000000000064")!
        static let scarfTrail               = UUID(uuidString: "B0000001-0000-0000-0000-000000000065")!
        static let helpDressAnimal          = UUID(uuidString: "B0000001-0000-0000-0000-000000000066")!
    }

    // MARK: - Load

    static func loadIfNeeded(context: ModelContext) {
        let existingItems = (try? context.fetch(FetchDescriptor<HouseholdItem>())) ?? []
        let existingItemIDs = Set(existingItems.map(\.id))

        let existingActivities = (try? context.fetch(FetchDescriptor<Activity>())) ?? []
        let existingActivityIDs = Set(existingActivities.map(\.id))

        var changed = false

        for item in householdItems() {
            if !existingItemIDs.contains(item.id) {
                context.insert(item)
                context.insert(InventoryEntry(itemID: item.id, status: .has))
                changed = true
            }
        }

        for activity in activities() {
            if !existingActivityIDs.contains(activity.id) {
                context.insert(activity)
                changed = true
            }
        }

        if changed {
            try? context.save()
        }
    }

    // MARK: - Household Items

    static func householdItems() -> [HouseholdItem] {
        [
            HouseholdItem(id: ItemID.plasticBowl, canonicalName: "Plastic Bowl",
                          aliases: ["mixing bowl", "small bowl", "cereal bowl"], category: .kitchen, commonality: 95),
            HouseholdItem(id: ItemID.woodenSpoon, canonicalName: "Wooden Spoon",
                          aliases: ["big spoon", "stirring spoon", "cooking spoon"], category: .kitchen, commonality: 85),
            HouseholdItem(id: ItemID.measuringCups, canonicalName: "Measuring Cups",
                          aliases: ["nesting cups", "cup set"], category: .kitchen, commonality: 80),
            HouseholdItem(id: ItemID.plasticCups, canonicalName: "Plastic Cups",
                          aliases: ["sippy cups", "small cups", "kid cups"], category: .kitchen, commonality: 90),
            HouseholdItem(id: ItemID.muffinTin, canonicalName: "Muffin Tin",
                          aliases: ["muffin pan", "cupcake pan"], category: .kitchen, commonality: 75),
            HouseholdItem(id: ItemID.colander, canonicalName: "Colander",
                          aliases: ["strainer", "pasta strainer"], category: .kitchen, commonality: 70),
            HouseholdItem(id: ItemID.potWithLid, canonicalName: "Pot with Lid",
                          aliases: ["cooking pot", "saucepan", "pot"], category: .kitchen, commonality: 90),
            HouseholdItem(id: ItemID.plasticContainers, canonicalName: "Plastic Containers",
                          aliases: ["tupperware", "food containers", "storage containers"], category: .kitchen, commonality: 90),

            HouseholdItem(id: ItemID.towels, canonicalName: "Towels",
                          aliases: ["bath towel", "hand towel"], category: .bath, commonality: 95),
            HouseholdItem(id: ItemID.washcloths, canonicalName: "Washcloths",
                          aliases: ["face cloth", "flannel"], category: .bath, commonality: 85),
            HouseholdItem(id: ItemID.sponge, canonicalName: "Sponge",
                          aliases: ["kitchen sponge", "bath sponge"], category: .bath, commonality: 80),

            HouseholdItem(id: ItemID.paper, canonicalName: "Paper",
                          aliases: ["printer paper", "blank paper", "scrap paper"], category: .paper, commonality: 90),
            HouseholdItem(id: ItemID.cardboardBox, canonicalName: "Cardboard Box",
                          aliases: ["shipping box", "box"], category: .paper, commonality: 80),
            HouseholdItem(id: ItemID.paperTowelTubes, canonicalName: "Paper Towel Tubes",
                          aliases: ["cardboard tube", "toilet paper roll"], category: .paper, commonality: 75),
            HouseholdItem(id: ItemID.tissuePaper, canonicalName: "Tissue Paper",
                          aliases: ["wrapping tissue", "gift tissue"], category: .paper, commonality: 65),
            HouseholdItem(id: ItemID.tape, canonicalName: "Tape",
                          aliases: ["masking tape", "painter's tape", "scotch tape"], category: .paper, commonality: 85),
            HouseholdItem(id: ItemID.crayons, canonicalName: "Crayons",
                          aliases: ["wax crayons", "colored crayons"], category: .paper, commonality: 75),

            HouseholdItem(id: ItemID.socks, canonicalName: "Socks",
                          aliases: ["baby socks", "ankle socks", "clean socks"], category: .fabric, commonality: 95),
            HouseholdItem(id: ItemID.scarves, canonicalName: "Scarves",
                          aliases: ["scarf", "bandana", "silk scarf"], category: .fabric, commonality: 60),
            HouseholdItem(id: ItemID.blankets, canonicalName: "Blankets",
                          aliases: ["throw blanket", "receiving blanket", "baby blanket"], category: .fabric, commonality: 95),
            HouseholdItem(id: ItemID.pillows, canonicalName: "Pillows",
                          aliases: ["throw pillow", "couch cushion", "bed pillow"], category: .fabric, commonality: 95),

            HouseholdItem(id: ItemID.balls, canonicalName: "Balls",
                          aliases: ["soft ball", "rubber ball", "beach ball"], category: .toys, commonality: 90),
            HouseholdItem(id: ItemID.blocks, canonicalName: "Blocks",
                          aliases: ["building blocks", "stacking blocks", "wooden blocks"], category: .toys, commonality: 80),
            HouseholdItem(id: ItemID.stuffedAnimals, canonicalName: "Stuffed Animals",
                          aliases: ["teddy bear", "plush toy", "soft toy"], category: .toys, commonality: 85),

            HouseholdItem(id: ItemID.water, canonicalName: "Water",
                          aliases: ["tap water", "warm water"], category: .outdoor, commonality: 99),

            HouseholdItem(id: ItemID.dryPasta, canonicalName: "Dry Pasta",
                          aliases: ["uncooked pasta", "noodles", "penne"], category: .food, commonality: 85),
            HouseholdItem(id: ItemID.rice, canonicalName: "Rice",
                          aliases: ["uncooked rice", "dry rice", "white rice"], category: .food, commonality: 80),
            HouseholdItem(id: ItemID.cereal, canonicalName: "Cereal",
                          aliases: ["dry cereal", "cheerios", "puffs"], category: .food, commonality: 85),

            HouseholdItem(id: ItemID.clothespins, canonicalName: "Clothespins",
                          aliases: ["clips", "pegs", "spring clips"], category: .tools, commonality: 55),

            HouseholdItem(id: ItemID.laundryBasket, canonicalName: "Laundry Basket",
                          aliases: ["hamper", "clothes basket"], category: .misc, commonality: 90),
            HouseholdItem(id: ItemID.cushions, canonicalName: "Cushions",
                          aliases: ["couch cushion", "floor cushion", "seat cushion"], category: .misc, commonality: 90),
            HouseholdItem(id: ItemID.emptyBottles, canonicalName: "Empty Bottles",
                          aliases: ["plastic bottle", "water bottle"], category: .misc, commonality: 85),
            HouseholdItem(id: ItemID.cottonBalls, canonicalName: "Cotton Balls",
                          aliases: ["cotton pads", "cotton rounds"], category: .misc, commonality: 70),
        ]
    }

    // MARK: - Activities

    static func activities() -> [Activity] {
        [
            Activity(
                id: ActivityID.ballRolling,
                title: "Ball Rolling Back and Forth",
                subtitle: "Practice taking turns while rolling a ball together",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.grossMotor, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.balls],
                stepsMarkdown: """
                Sit on the floor facing your toddler with legs apart.
                Roll the ball gently toward your toddler.
                Say "Your turn!" and encourage them to roll it back.
                Celebrate each roll with a smile or gentle clap.
                """,
                safetyNotes: ["Use a soft ball that won't hurt if thrown", "Play on a flat, clear surface"],
                easierVariation: "Sit closer together so the ball doesn't roll too far.",
                harderVariation: "Try rolling to a target like a box on its side.",
                stretchVariation: "Add a second ball and take turns rolling different ones. Try rolling from further apart as your toddler gets comfortable.",
                estimatedMinutes: 5, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.potAndSpoonBand,
                title: "Pot and Spoon Band",
                subtitle: "Explore sounds by tapping pots and lids with a spoon",
                minAgeMonths: 12, maxAgeMonths: 36,
                skills: [.sensory, .fineMotor, .cognitive],
                energyLevel: .high,
                materialIDs: [ItemID.potWithLid, ItemID.woodenSpoon],
                stepsMarkdown: """
                Place a pot and its lid on the floor.
                Hand your toddler a wooden spoon.
                Show them how to tap the pot to make sounds.
                Try tapping the lid separately — it sounds different!
                """,
                safetyNotes: ["Use a wooden spoon, not metal, to reduce noise level", "Make sure pot has no sharp edges"],
                easierVariation: "Just tap the pot yourself and let your toddler watch and listen.",
                harderVariation: "Add more pots and containers of different sizes for a full drum set.",
                stretchVariation: "Sing a favorite song and let your toddler play along. Take turns being the drummer and the singer.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.sockMatching,
                title: "Sock Matching Game",
                subtitle: "Sort and match socks by color and size",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.cognitive, .fineMotor],
                energyLevel: .low,
                materialIDs: [ItemID.socks],
                stepsMarkdown: """
                Gather 4–6 pairs of clean socks.
                Mix them up in a pile on the floor.
                Pick up one sock and ask "Can you find the match?"
                Help your toddler compare colors and sizes.
                """,
                safetyNotes: ["Use clean adult-sized socks that aren't a choking hazard"],
                easierVariation: "Use just 2 very different pairs to start.",
                harderVariation: "Add more pairs or use socks with subtle differences.",
                stretchVariation: "After matching, try making sock puppets by putting socks on your hands and having a silly conversation.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.cardboardBoxFort,
                title: "Cardboard Box Fort",
                subtitle: "Build a cozy space to climb in and out of",
                minAgeMonths: 15, maxAgeMonths: 36,
                skills: [.grossMotor, .cognitive],
                energyLevel: .medium,
                materialIDs: [ItemID.cardboardBox, ItemID.blankets, ItemID.pillows],
                stepsMarkdown: """
                Open a large cardboard box on its side.
                Place a blanket inside as a soft floor.
                Add a pillow for comfort.
                Let your toddler climb in and out, peek through, and explore.
                """,
                safetyNotes: ["Ensure box is sturdy enough not to collapse", "Remove any staples or sharp tape edges"],
                easierVariation: "Skip the box and just drape a blanket over two chairs to make a tent.",
                harderVariation: "Cut a window in the box and play peek-a-boo through it.",
                stretchVariation: "Bring favorite books or stuffed animals inside the fort for a cozy reading spot. This can become a calm-down space too.",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 1, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.waterPouring,
                title: "Water Pouring Station",
                subtitle: "Pour water between cups and containers",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.fineMotor, .sensory],
                energyLevel: .medium,
                materialIDs: [ItemID.plasticCups, ItemID.water, ItemID.plasticContainers, ItemID.towels],
                stepsMarkdown: """
                Lay a towel on the floor or table.
                Fill a container with a little water.
                Give your toddler small cups to pour water back and forth.
                Let them explore filling, pouring, and emptying.
                """,
                safetyNotes: ["Use only a small amount of water", "Stay within arm's reach to avoid slipping", "Dry any spills promptly"],
                easierVariation: "Use just one cup and one container to keep it simple.",
                harderVariation: "Add a funnel or colander to pour through.",
                stretchVariation: "Add a few small floating toys or leaves to the water. Ask your toddler to move them between containers.",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 1, messLevel: 2, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.cottonBallTransfer,
                title: "Cotton Ball Transfer",
                subtitle: "Move cotton balls one at a time into muffin tin cups",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.cottonBalls, ItemID.plasticCups, ItemID.muffinTin],
                stepsMarkdown: """
                Place cotton balls in a plastic cup.
                Set a muffin tin next to it.
                Show your toddler how to pick up one cotton ball and place it in a muffin cup.
                Encourage them to fill each cup with one cotton ball.
                """,
                safetyNotes: ["Cotton balls can be a choking hazard — supervise closely", "Not suitable for toddlers who still mouth everything"],
                easierVariation: "Use larger crumpled tissue paper balls instead.",
                harderVariation: "Use a spoon to transfer instead of fingers.",
                stretchVariation: "Try sorting cotton balls by size if you have different ones, or count them together as they go in.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.blanketPeekaboo,
                title: "Blanket Peek-a-Boo",
                subtitle: "Play peek-a-boo with a soft blanket",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.socialEmotional, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.blankets],
                stepsMarkdown: """
                Sit facing your toddler.
                Drape a light blanket over your head.
                Say "Where did I go?"
                Pull the blanket off and say "Peek-a-boo!"
                Let your toddler try hiding under the blanket too.
                """,
                safetyNotes: ["Use a lightweight, breathable blanket", "Never leave a blanket over your toddler's face unattended"],
                easierVariation: "Use your hands instead of a blanket for simpler peek-a-boo.",
                harderVariation: "Hide a toy under the blanket and ask your toddler to find it.",
                stretchVariation: "Take turns hiding and finding. Add a stuffed animal that also gets to hide — your toddler can help find it.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.cushionObstacleCourse,
                title: "Cushion Obstacle Course",
                subtitle: "Climb, crawl, and balance through a pillow path",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.grossMotor],
                energyLevel: .high,
                materialIDs: [ItemID.cushions, ItemID.pillows, ItemID.laundryBasket, ItemID.blankets],
                stepsMarkdown: """
                Arrange cushions and pillows on the floor in a path.
                Drape a blanket between two chairs to crawl under.
                Place the laundry basket at the end as a goal.
                Guide your toddler through the course — over, under, around.
                """,
                safetyNotes: ["Clear hard or sharp objects from the area", "Stay close to spot your toddler on unsteady surfaces", "Use the course on carpet or a soft surface"],
                easierVariation: "Use fewer obstacles — just a couple of pillows to climb over.",
                harderVariation: "Add a balance challenge like walking along a line of tape on the floor.",
                stretchVariation: "Run through the course together multiple times. Your toddler may want to rearrange the obstacles — let them lead!",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 1, messLevel: 0, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.crayonScribbleArt,
                title: "Crayon Scribble Art",
                subtitle: "Explore colors and marks with free drawing",
                minAgeMonths: 15, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive, .sensory],
                energyLevel: .low,
                materialIDs: [ItemID.crayons, ItemID.paper, ItemID.tape],
                stepsMarkdown: """
                Tape a large sheet of paper to the table.
                Set out 2–3 crayons.
                Let your toddler scribble freely.
                Name the colors they reach for: "You picked the red one!"
                """,
                safetyNotes: ["Use non-toxic crayons only", "Supervise to prevent eating crayons"],
                easierVariation: "Hold the crayon together with your toddler to help them feel the motion.",
                harderVariation: "Draw simple shapes and invite your toddler to trace or copy them.",
                stretchVariation: "Talk about what the scribbles look like together. Try different paper textures like brown bags or newspaper edges.",
                estimatedMinutes: 15, setupMinutes: 1, setupComplexity: 0, messLevel: 1, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.pastaShapeSorting,
                title: "Pasta Shape Sorting",
                subtitle: "Sort different pasta shapes into groups",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.dryPasta, ItemID.plasticCups, ItemID.muffinTin],
                stepsMarkdown: """
                Place a handful of two different pasta shapes on the table.
                Show your toddler the two shapes and name them.
                Ask them to sort each shape into its own cup or muffin tin slot.
                Celebrate when they get it right!
                """,
                safetyNotes: ["Dry pasta can be a choking hazard — supervise closely", "Not suitable for toddlers who still mouth objects", "Clean up small pieces afterward"],
                easierVariation: "Use just one shape and practice picking up and dropping into a cup.",
                harderVariation: "Add a third pasta shape or sort by size.",
                stretchVariation: "Count the pasta pieces together after sorting. Try making patterns: one of this shape, one of that shape.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 1, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.laundryBasketRide,
                title: "Laundry Basket Ride",
                subtitle: "Go for a gentle ride in a laundry basket",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.grossMotor, .socialEmotional],
                energyLevel: .medium,
                materialIDs: [ItemID.laundryBasket, ItemID.blankets],
                stepsMarkdown: """
                Place a folded blanket in the bottom of the laundry basket.
                Help your toddler sit inside safely.
                Slowly pull or push the basket across the floor.
                Make car or train sounds together!
                """,
                safetyNotes: ["Use a sturdy basket that won't tip", "Pull slowly on a smooth floor only", "Stay close enough to catch if they try to stand"],
                easierVariation: "Let your toddler sit in the basket without moving it — just play inside.",
                harderVariation: "Add stops and pretend destinations: the kitchen is the zoo, the hallway is the farm.",
                stretchVariation: "Load stuffed animals as passengers. Your toddler can be the driver and decide where everyone goes.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.tissuePaperCrumple,
                title: "Tissue Paper Crumple",
                subtitle: "Explore textures by crumpling and tearing tissue paper",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.fineMotor, .sensory],
                energyLevel: .low,
                materialIDs: [ItemID.tissuePaper, ItemID.cardboardBox],
                stepsMarkdown: """
                Give your toddler a sheet of tissue paper.
                Show them how to crumple it into a ball.
                Let them tear and scrunch freely.
                Collect the pieces together in a cardboard box.
                """,
                safetyNotes: ["Watch for small pieces that could be mouthed", "Tissue paper is not food — redirect if your toddler tries to eat it"],
                easierVariation: "Crumple the paper yourself and let your toddler watch and feel the texture.",
                harderVariation: "Try stuffing the crumpled paper into a tube or bottle opening.",
                stretchVariation: "Use different colored tissue paper and fill the box to make a colorful collection. Let your toddler dump and refill.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 1, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.stuffedAnimalHideSeek,
                title: "Stuffed Animal Hide and Seek",
                subtitle: "Find hidden stuffed animals around the room",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.cognitive, .language],
                energyLevel: .medium,
                materialIDs: [ItemID.stuffedAnimals, ItemID.blankets],
                stepsMarkdown: """
                Show your toddler a stuffed animal.
                Say "Bear is going to hide!" and place it under a blanket.
                Ask "Where did bear go?"
                Celebrate when your toddler finds it!
                """,
                safetyNotes: ["Use stuffed animals without small removable parts"],
                easierVariation: "Leave part of the animal sticking out so it's easy to spot.",
                harderVariation: "Hide the animal further away or in a less obvious spot.",
                stretchVariation: "Hide two or three animals at once. Use words like \"under,\" \"behind,\" and \"next to\" as clues to practice position words.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.spongeSqueezePlay,
                title: "Sponge Squeeze Play",
                subtitle: "Squeeze water from sponges between containers",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.fineMotor, .sensory],
                energyLevel: .medium,
                materialIDs: [ItemID.sponge, ItemID.water, ItemID.plasticContainers, ItemID.towels],
                stepsMarkdown: """
                Lay a towel down to catch drips.
                Fill one container with a little water.
                Show your toddler how to dip the sponge and squeeze it into another container.
                Let them transfer water back and forth by squeezing.
                """,
                safetyNotes: ["Use only a small amount of water", "Dry any spills to prevent slipping", "Stay within arm's reach"],
                easierVariation: "Just let them squeeze the sponge in the water and feel the sensation.",
                harderVariation: "See who can move more water in 10 squeezes.",
                stretchVariation: "Try sponges of different sizes to feel the difference. Talk about which sponge holds more water.",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 1, messLevel: 2, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.cardboardTubeTalker,
                title: "Cardboard Tube Talker",
                subtitle: "Make silly sounds through a cardboard tube",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.language, .sensory],
                energyLevel: .low,
                materialIDs: [ItemID.paperTowelTubes],
                stepsMarkdown: """
                Hold a paper towel tube to your mouth.
                Make funny sounds, animal noises, or sing a little song.
                Offer the tube to your toddler.
                Celebrate any sounds they make back!
                """,
                safetyNotes: ["Don't let your toddler bite or chew the tube", "Replace the tube if it gets soggy"],
                easierVariation: "Just hold the tube and make sounds — your toddler can listen and react.",
                harderVariation: "Hold it to their ear and whisper, then switch roles.",
                stretchVariation: "Use two tubes to talk back and forth like phones. Practice animal sounds together — what does a cow say?",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.cerealStacking,
                title: "Cereal Stacking",
                subtitle: "Stack and count large cereal pieces",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.cereal],
                stepsMarkdown: """
                Place a few large cereal pieces on the table.
                Show your toddler how to stack one on top of another.
                Count together as you stack: "One... two... three!"
                Let them knock it over and start again.
                """,
                safetyNotes: ["Use age-appropriate cereal with no choking risk", "Check for food allergies before using any cereal"],
                easierVariation: "Just practice picking up and putting down single pieces.",
                harderVariation: "Try to build the tallest tower possible before it falls.",
                stretchVariation: "Sort cereal by shape or color before stacking. This makes a great snack break activity — stack, count, then eat!",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 1, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.pillowMountain,
                title: "Pillow Mountain Climb",
                subtitle: "Climb over a pile of pillows and cushions",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.grossMotor],
                energyLevel: .high,
                materialIDs: [ItemID.pillows, ItemID.cushions, ItemID.blankets],
                stepsMarkdown: """
                Pile pillows and cushions on the floor.
                Drape a blanket over the pile to hold it together.
                Encourage your toddler to climb up and slide down.
                Stay close for support and cheers.
                """,
                safetyNotes: ["Place on carpet or soft surface", "Stay within arm's reach at all times", "Ensure no hard objects underneath the pile"],
                easierVariation: "Use just one or two flat cushions for gentle climbing.",
                harderVariation: "Make the pile bigger and add different heights to climb over.",
                stretchVariation: "Place a favorite toy at the top of the mountain as a goal. Your toddler can practice climbing up to get it and bringing it back down.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.cupTowerBuilding,
                title: "Cup Tower Building",
                subtitle: "Stack plastic cups into a tower and knock them down",
                minAgeMonths: 12, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive],
                energyLevel: .medium,
                materialIDs: [ItemID.plasticCups],
                stepsMarkdown: """
                Place several plastic cups on the floor or table.
                Show your toddler how to stack them into a tower.
                Build it up together, one cup at a time.
                Let them knock it down — that's the best part!
                """,
                safetyNotes: ["Use lightweight plastic cups that won't hurt", "Avoid glass or ceramic cups"],
                easierVariation: "Stack just two cups and celebrate before knocking down.",
                harderVariation: "Try building a pyramid shape with rows.",
                stretchVariation: "Count the cups as you stack. See if you can build a taller tower each time. Try nesting cups inside each other too.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.stuffedAnimalTeaParty,
                title: "Stuffed Animal Tea Party",
                subtitle: "Host a pretend tea party and practice caring for friends",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.socialEmotional, .language],
                energyLevel: .low,
                materialIDs: [ItemID.stuffedAnimals, ItemID.plasticCups],
                stepsMarkdown: """
                Sit stuffed animals in a circle on the floor.
                Give each animal a plastic cup.
                Pretend to pour tea and say "Here you go, bear!"
                Encourage your toddler to offer cups to each animal.
                Say thank you to each animal after they "drink."
                """,
                safetyNotes: ["Use only plastic cups, no real liquids needed"],
                easierVariation: "Use just one stuffed animal and take turns offering the cup.",
                harderVariation: "Add pretend food items and ask your toddler what each animal wants.",
                stretchVariation: "Let your toddler lead the party. Ask questions like \"Is bear hungry?\" or \"Does bunny want more?\" to encourage conversation.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.feelingsFaces,
                title: "Feelings Faces",
                subtitle: "Draw simple faces together and name the emotions",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.socialEmotional, .fineMotor],
                energyLevel: .low,
                materialIDs: [ItemID.paper, ItemID.crayons],
                stepsMarkdown: """
                Draw a big circle on the paper for a face.
                Draw a happy mouth and say "This face is happy!"
                Draw another circle and make a sad face.
                Ask your toddler to scribble on the faces or point to how they feel.
                Name each feeling as you go: happy, sad, surprised, sleepy.
                """,
                safetyNotes: ["Use non-toxic crayons", "Supervise to prevent eating crayons"],
                easierVariation: "Draw just two faces — happy and sad — and point to each one.",
                harderVariation: "Ask your toddler to try drawing the mouth shape for each feeling.",
                stretchVariation: "Make a feelings chart together and hang it up. Throughout the day, ask your toddler to point to how they feel.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.gentleTouchPractice,
                title: "Gentle Touch Practice",
                subtitle: "Learn gentle hands by caring for a stuffed animal friend",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.socialEmotional, .sensory],
                energyLevel: .low,
                materialIDs: [ItemID.stuffedAnimals, ItemID.blankets],
                stepsMarkdown: """
                Hold a stuffed animal and say "Let's be gentle with bear."
                Show soft petting strokes on the animal.
                Guide your toddler's hand to pet gently.
                Wrap the animal in a blanket and say "Night night, bear."
                Praise gentle touches: "So gentle, bear likes that!"
                """,
                safetyNotes: ["Choose a stuffed animal without small removable parts"],
                easierVariation: "Just practice petting the animal gently — no blanket wrapping needed.",
                harderVariation: "Practice gentle touches on your arm too, then let your toddler show you.",
                stretchVariation: "Use this as a wind-down activity before nap time. Let your toddler tuck in several animals and say goodnight to each.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.sharingBackAndForth,
                title: "Sharing Back and Forth",
                subtitle: "Practice giving and receiving blocks with a partner",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.socialEmotional, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.blocks],
                stepsMarkdown: """
                Sit facing your toddler with a pile of blocks between you.
                Pick up a block and hand it to your toddler saying "For you!"
                Hold out your hand and say "Can I have one?"
                Celebrate when they share: "Thank you! You shared!"
                Take turns giving and receiving blocks.
                """,
                safetyNotes: ["Use blocks large enough to not be a choking hazard"],
                easierVariation: "Start by just handing blocks and letting them take them — no need to give back yet.",
                harderVariation: "Take turns placing blocks to build something together.",
                stretchVariation: "Introduce color requests: \"Can I have the red one?\" This practices sharing and color recognition together.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.scarfDanceParty,
                title: "Scarf Dance Party",
                subtitle: "Wave scarves and dance together to encourage expression",
                minAgeMonths: 12, maxAgeMonths: 30,
                skills: [.socialEmotional, .grossMotor],
                energyLevel: .high,
                materialIDs: [ItemID.scarves],
                stepsMarkdown: """
                Give your toddler a scarf and take one yourself.
                Wave your scarf up high, then down low.
                Spin around slowly with the scarf flowing behind you.
                Hum or sing a song while you dance together.
                Copy each other's movements and laugh together.
                """,
                safetyNotes: ["Use lightweight scarves that won't tangle", "Clear the area of furniture to avoid bumps", "Keep scarves away from neck area"],
                easierVariation: "Just wave the scarf while sitting down and let your toddler watch and try.",
                harderVariation: "Take turns leading the dance — your toddler moves first and you copy.",
                stretchVariation: "Try different kinds of music. Dance fast to upbeat music and slow to calm music. Talk about how each feels.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.cozyCalmDown,
                title: "Cozy Calm Down Corner",
                subtitle: "Create a quiet, soft space for practicing self-soothing",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.socialEmotional, .selfHelp],
                energyLevel: .low,
                materialIDs: [ItemID.blankets, ItemID.pillows, ItemID.stuffedAnimals],
                stepsMarkdown: """
                Arrange pillows and a blanket in a corner of the room.
                Place a favorite stuffed animal inside.
                Sit together in the cozy space and take slow, deep breaths.
                Say "This is our calm spot. We can come here when we need a break."
                Practice breathing together: "Breathe in... breathe out..."
                """,
                safetyNotes: ["Keep the space clear of hard objects", "Use breathable blankets only"],
                easierVariation: "Just sit together on a pillow and cuddle with the stuffed animal.",
                harderVariation: "Practice naming feelings: \"I feel calm. How do you feel?\"",
                stretchVariation: "Make this a regular part of your routine. Before or after high-energy play, visit the calm corner together for a few breaths.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.helperCleanupGame,
                title: "Helper Cleanup Game",
                subtitle: "Turn tidying up into a fun sorting and teamwork game",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.socialEmotional, .selfHelp, .grossMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.laundryBasket, ItemID.blocks],
                stepsMarkdown: """
                Scatter blocks around the room.
                Place the laundry basket in the middle.
                Say "Let's clean up together! Can you find a block?"
                Cheer each time they drop a block in: "You did it! What a helper!"
                Take turns putting blocks in the basket.
                """,
                safetyNotes: ["Make sure there's a clear path to walk without tripping"],
                easierVariation: "Place blocks close to the basket so they don't have to walk far.",
                harderVariation: "Ask for specific colors: \"Can you find a red block to put away?\"",
                stretchVariation: "Count the blocks as they go in together. Sing a cleanup song to make it part of your daily routine.",
                estimatedMinutes: 5, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.stuffedAnimalDoctor,
                title: "Stuffed Animal Doctor",
                subtitle: "Pretend to care for a stuffed animal who isn't feeling well",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.socialEmotional, .language],
                energyLevel: .low,
                materialIDs: [ItemID.stuffedAnimals, ItemID.washcloths, ItemID.blankets],
                stepsMarkdown: """
                Say "Oh no, bear has a boo-boo. Can you help?"
                Show your toddler how to gently place a washcloth on the animal.
                Say "Let's tuck bear in so they can rest" and wrap with a blanket.
                Ask your toddler "Is bear feeling better?"
                Praise their caring: "You're such a good helper!"
                """,
                safetyNotes: ["Use clean washcloths only"],
                easierVariation: "Just wrap the animal in a blanket and say goodnight.",
                harderVariation: "Let your toddler decide what's wrong and how to help.",
                stretchVariation: "Line up several animals as patients. Your toddler can be the doctor and visit each one, practicing empathy and care-giving language.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.copyCatGame,
                title: "Copy Cat Game",
                subtitle: "Take turns copying each other's actions and sounds",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.socialEmotional, .language, .cognitive],
                energyLevel: .medium,
                materialIDs: [ItemID.balls],
                stepsMarkdown: """
                Sit facing your toddler.
                Clap your hands and say "Copy me!"
                Wait for them to clap, then cheer.
                Let your toddler do an action and you copy them.
                Try silly sounds, stomping feet, or bouncing the ball.
                """,
                safetyNotes: ["Keep movements gentle to avoid bumps"],
                easierVariation: "Start with just one simple action like clapping and repeat it several times.",
                harderVariation: "Do two actions in a row and see if they can copy both.",
                stretchVariation: "Add animal sounds to copy: roar like a lion, hop like a bunny. This practices listening, turn-taking, and body awareness.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.riceSensoryBin,
                title: "Rice Sensory Bin",
                subtitle: "Scoop and pour rice to explore textures and sounds",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.sensory, .fineMotor],
                energyLevel: .low,
                materialIDs: [ItemID.rice, ItemID.plasticCups, ItemID.plasticContainers, ItemID.measuringCups],
                stepsMarkdown: """
                Pour rice into a large plastic container.
                Set out cups and measuring cups for scooping.
                Let your toddler scoop, pour, and run their fingers through the rice.
                Talk about what they feel: "It's so smooth! Listen to the sound!"
                """,
                safetyNotes: ["Supervise closely to prevent eating raw rice", "Not suitable for toddlers who still mouth everything", "Place a towel under the container for easy cleanup"],
                easierVariation: "Just let them feel the rice with their hands — no scooping tools needed.",
                harderVariation: "Hide small toys in the rice for them to find by digging.",
                stretchVariation: "Try different dry materials on different days — pasta, cereal, cotton balls — and compare how they feel and sound.",
                estimatedMinutes: 15, setupMinutes: 1, setupComplexity: 0, messLevel: 2, supervision: .armsReach
            ),

            Activity(
                id: ActivityID.byeByeWaveGame,
                title: "Bye Bye Wave Game",
                subtitle: "Practice greetings and goodbyes with a scarf and stuffed friends",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.socialEmotional, .language],
                energyLevel: .low,
                materialIDs: [ItemID.scarves, ItemID.stuffedAnimals],
                stepsMarkdown: """
                Hold up a stuffed animal and say "Hi, bear! Wave hello!"
                Wave together at the animal.
                Hide the animal behind the scarf.
                Say "Bye bye, bear!" and wave goodbye.
                Bring the animal back and say "Hello again!"
                """,
                safetyNotes: ["Keep scarves away from toddler's neck"],
                easierVariation: "Skip the scarf and just practice waving hello and goodbye.",
                harderVariation: "Use two animals and greet each one by name.",
                stretchVariation: "Practice greetings with different animals and use their sounds too: \"Hello moo-cow! Bye bye moo-cow!\" This supports social routines and early language.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            Activity(
                id: ActivityID.towelWrapCuddle,
                title: "Towel Wrap and Cuddle",
                subtitle: "Wrap up together in towels for a calming sensory experience",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.socialEmotional, .sensory],
                energyLevel: .low,
                materialIDs: [ItemID.towels],
                stepsMarkdown: """
                Lay a large towel flat on the floor.
                Help your toddler lie down at one edge.
                Gently roll them up like a burrito, keeping arms free.
                Give gentle squeezes through the towel and say "Squeeeze!"
                Unroll and do it again if they want more.
                """,
                safetyNotes: ["Keep arms free and face uncovered at all times", "Roll gently — never tightly", "Stop if your toddler seems uncomfortable"],
                easierVariation: "Just drape the towel over their shoulders like a cape and give a hug.",
                harderVariation: "Let your toddler try to roll themselves or wrap a stuffed animal.",
                stretchVariation: "After the towel wrap, transition to a calm activity like reading a book together. This is a great way to wind down after active play.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // MARK: - New Activities (72)

            // 1 — 12-18mo
            Activity(
                id: ActivityID.colanderDrumming,
                title: "Colander Drumming",
                subtitle: "Supports rhythm exploration by tapping a colander with a spoon",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.sensory, .fineMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.colander, ItemID.woodenSpoon],
                stepsMarkdown: """
                Place the colander upside down on the floor.
                Hand your toddler a wooden spoon.
                Show them how to tap the colander — listen to the sound!
                Let them explore tapping different spots and speeds.
                """,
                safetyNotes: ["Use a wooden spoon to keep noise manageable"],
                easierVariation: "Tap the colander yourself and let your toddler watch and listen.",
                harderVariation: "Add a second container nearby to compare the different sounds.",
                stretchVariation: "Hum a song and let your toddler tap along. Pause and restart to practice stop-and-go listening.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 2 — 12-18mo
            Activity(
                id: ActivityID.bottleShaker,
                title: "Bottle Shaker",
                subtitle: "Encourages cause-and-effect learning by shaking a rice-filled bottle",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.sensory, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.emptyBottles, ItemID.rice, ItemID.tape],
                stepsMarkdown: """
                Pour a small amount of rice into an empty plastic bottle.
                Seal the cap tightly and secure with tape.
                Hand the bottle to your toddler.
                Shake it together and listen to the sound!
                """,
                safetyNotes: ["Ensure the cap is sealed tightly with tape", "Check the seal frequently during play"],
                easierVariation: "Shake the bottle yourself while your toddler watches and reaches for it.",
                harderVariation: "Make two shakers with different amounts of rice and compare the sounds.",
                stretchVariation: "Shake fast, then slow. Shake loud, then quiet. Talk about the differences your toddler hears.",
                estimatedMinutes: 10, setupMinutes: 2, setupComplexity: 1, messLevel: 0, supervision: .armsReach
            ),

            // 3 — 12-18mo
            Activity(
                id: ActivityID.blanketSwing,
                title: "Blanket Swing",
                subtitle: "Supports vestibular awareness through gentle rocking on a blanket",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.grossMotor, .socialEmotional],
                energyLevel: .medium,
                materialIDs: [ItemID.blankets],
                stepsMarkdown: """
                Lay a blanket flat on the floor.
                Help your toddler sit in the middle of the blanket.
                With a partner, each hold two corners.
                Gently lift and sway the blanket side to side.
                """,
                safetyNotes: ["Keep the blanket low to the ground", "Requires two adults", "Stop immediately if toddler seems nervous"],
                easierVariation: "Just gently rock the blanket while it stays on the floor.",
                harderVariation: "Add gentle bouncing motions if your toddler enjoys it.",
                stretchVariation: "Sing a favorite song while swinging. Pause at certain words and let your toddler fill in the gap.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 4 — 12-18mo
            Activity(
                id: ActivityID.paperTearing,
                title: "Paper Tearing Fun",
                subtitle: "Practices hand strength by tearing paper into pieces",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.fineMotor, .sensory],
                energyLevel: .low,
                materialIDs: [ItemID.paper, ItemID.plasticBowl],
                stepsMarkdown: """
                Give your toddler a sheet of paper.
                Show them how to tear it into strips.
                Let them rip and crumple freely.
                Collect the pieces in a bowl together.
                """,
                safetyNotes: ["Watch that paper pieces are not mouthed", "Use plain paper without ink or coatings"],
                easierVariation: "Start a small tear and let your toddler finish pulling it apart.",
                harderVariation: "Try tearing along a fold line you pre-crease for them.",
                stretchVariation: "After tearing, toss the pieces in the air like confetti. Then practice cleanup by picking them up together.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 1, supervision: .armsReach
            ),

            // 5 — 12-18mo
            Activity(
                id: ActivityID.sockPuppetShow,
                title: "Sock Puppet Show",
                subtitle: "Encourages early language through silly sock puppet play",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.language, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.socks],
                stepsMarkdown: """
                Put a sock on your hand like a puppet.
                Open and close your fingers like a mouth.
                Make silly sounds and say hello to your toddler.
                Let your toddler touch and interact with the puppet.
                """,
                safetyNotes: ["Use clean socks only"],
                easierVariation: "Just wave the sock puppet and make sounds without expecting a response.",
                harderVariation: "Encourage your toddler to babble or wave back at the puppet.",
                stretchVariation: "Give the puppet a name and a voice. Use it throughout the day to narrate simple routines like snack time.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 6 — 12-18mo
            Activity(
                id: ActivityID.muffinTinSorting,
                title: "Muffin Tin Drop",
                subtitle: "Practices grasp-and-release by dropping items into a muffin tin",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.muffinTin, ItemID.cottonBalls, ItemID.balls],
                stepsMarkdown: """
                Place the muffin tin on the floor.
                Set out cotton balls and small soft balls.
                Show your toddler how to drop one item into each cup.
                Cheer when they place each one.
                """,
                safetyNotes: ["Supervise closely with cotton balls", "Use items too large to swallow"],
                easierVariation: "Use just one type of item and one cup to target.",
                harderVariation: "Ask your toddler to fill all six cups before dumping and starting over.",
                stretchVariation: "Count each item as it drops in. Point and say the number out loud together.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 7 — 12-18mo
            Activity(
                id: ActivityID.ballTossTarget,
                title: "Ball Toss into Box",
                subtitle: "Supports throwing skills by tossing balls into a cardboard box",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.grossMotor, .cognitive],
                energyLevel: .high,
                materialIDs: [ItemID.balls, ItemID.cardboardBox],
                stepsMarkdown: """
                Place a cardboard box on the floor a short distance away.
                Hand your toddler a soft ball.
                Show them how to toss the ball into the box.
                Celebrate every attempt, hit or miss!
                """,
                safetyNotes: ["Use soft balls only", "Keep the box close for younger toddlers"],
                easierVariation: "Stand right next to the box and drop the ball in.",
                harderVariation: "Move the box further away or use a smaller box.",
                stretchVariation: "Count how many balls land inside. Dump them out and try again to beat your record.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 8 — 12-18mo
            Activity(
                id: ActivityID.boxPushWalk,
                title: "Box Push Walk",
                subtitle: "Encourages walking practice by pushing a box across the floor",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.grossMotor],
                energyLevel: .high,
                materialIDs: [ItemID.cardboardBox],
                stepsMarkdown: """
                Place a sturdy cardboard box on a smooth floor.
                Show your toddler how to put their hands on the box.
                Encourage them to push it forward while walking.
                Walk alongside them and cheer them on.
                """,
                safetyNotes: ["Use a lightweight box on a non-slip surface", "Stay close to steady your toddler"],
                easierVariation: "Hold your toddler's hands and push the box together.",
                harderVariation: "Place a stuffed animal in the box to push as a passenger.",
                stretchVariation: "Create a simple path with tape on the floor and push the box along the route.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 9 — 12-18mo
            Activity(
                id: ActivityID.washclothPeekaboo,
                title: "Washcloth Peek-a-Boo",
                subtitle: "Practices object permanence with a small washcloth",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.cognitive, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.washcloths],
                stepsMarkdown: """
                Hold a washcloth in front of your face.
                Say "Where did I go?" in a playful voice.
                Pull the cloth away and say "Here I am!"
                Offer the washcloth to your toddler to try hiding too.
                """,
                safetyNotes: ["Use a thin, breathable washcloth"],
                easierVariation: "Just cover your eyes briefly and uncover right away.",
                harderVariation: "Cover a small toy with the washcloth and ask your toddler to find it.",
                stretchVariation: "Use different colored washcloths. Ask which color is hiding next. This supports color recognition alongside social play.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 10 — 12-18mo
            Activity(
                id: ActivityID.scarfPeekaboo,
                title: "Scarf Disappearing Game",
                subtitle: "Supports visual tracking by pulling a scarf through a tube",
                minAgeMonths: 12, maxAgeMonths: 18,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.scarves, ItemID.paperTowelTubes],
                stepsMarkdown: """
                Stuff a scarf partway into a paper towel tube.
                Show your toddler the scarf peeking out one end.
                Let them pull the scarf through the tube.
                Say "Where did it go? You found it!" as it emerges.
                """,
                safetyNotes: ["Use a lightweight scarf that pulls through easily", "Keep scarves away from neck"],
                easierVariation: "Let most of the scarf hang out so it's easy to grab.",
                harderVariation: "Push the scarf further in so they have to reach inside the tube.",
                stretchVariation: "Try multiple scarves in a row for a surprise chain. Talk about the colors as each one appears.",
                estimatedMinutes: 5, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 11 — 12-24mo
            Activity(
                id: ActivityID.pillowSandwich,
                title: "Pillow Sandwich",
                subtitle: "Supports body awareness through gentle deep-pressure play",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.sensory, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.pillows],
                stepsMarkdown: """
                Place a pillow on the floor for the "bread."
                Help your toddler lie on top of it face up.
                Gently lay another pillow on top like a sandwich.
                Give gentle presses and say "Squish the sandwich!"
                """,
                safetyNotes: ["Keep face uncovered at all times", "Press gently — never put weight on the pillow", "Stop if your toddler seems uncomfortable"],
                easierVariation: "Just lay one pillow over your toddler's legs and gently press.",
                harderVariation: "Ask your toddler what filling they want: cheese, lettuce? Add pretend ingredients.",
                stretchVariation: "Take turns being the sandwich. Let your toddler press gently on you too — practicing both giving and receiving gentle touch.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 12 — 12-24mo
            Activity(
                id: ActivityID.cerealPouring,
                title: "Cereal Pouring Practice",
                subtitle: "Practices pouring skills with dry cereal and cups",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.fineMotor, .selfHelp],
                energyLevel: .low,
                materialIDs: [ItemID.cereal, ItemID.plasticCups, ItemID.plasticBowl],
                stepsMarkdown: """
                Place some cereal in a plastic cup.
                Set a bowl next to it.
                Show your toddler how to pour cereal from cup to bowl.
                Let them practice pouring back and forth.
                """,
                safetyNotes: ["Check for food allergies", "Expect some spills — place a towel underneath"],
                easierVariation: "Hold the cup with them and pour together.",
                harderVariation: "Try pouring into a smaller container for more precision.",
                stretchVariation: "Practice scooping cereal with a spoon into the cup first, then pouring. This supports self-feeding readiness.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 1, supervision: .armsReach
            ),

            // 13 — 12-24mo
            Activity(
                id: ActivityID.blockBridge,
                title: "Block Bridge Building",
                subtitle: "Supports spatial reasoning by building a simple bridge with blocks",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.cognitive, .fineMotor],
                energyLevel: .low,
                materialIDs: [ItemID.blocks],
                stepsMarkdown: """
                Place two blocks side by side with a gap between them.
                Show your toddler how to lay a block on top as a bridge.
                Roll a small ball under the bridge.
                Celebrate when the ball goes through!
                """,
                safetyNotes: ["Use blocks large enough to not be a choking hazard"],
                easierVariation: "Just practice stacking two blocks on top of each other.",
                harderVariation: "Build a longer bridge with more support blocks.",
                stretchVariation: "Drive a toy or stuffed animal over the bridge and under it. Talk about over and under as you go.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 14 — 12-24mo
            Activity(
                id: ActivityID.bottleBowling,
                title: "Bottle Bowling",
                subtitle: "Practices rolling accuracy by knocking down empty bottles",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.grossMotor, .cognitive],
                energyLevel: .high,
                materialIDs: [ItemID.emptyBottles, ItemID.balls],
                stepsMarkdown: """
                Line up three empty bottles on the floor.
                Sit a short distance away with your toddler.
                Show them how to roll the ball toward the bottles.
                Cheer when any bottles fall down!
                """,
                safetyNotes: ["Use plastic bottles only", "Keep the rolling area clear"],
                easierVariation: "Place just one bottle close by as an easy target.",
                harderVariation: "Line up more bottles or move further away.",
                stretchVariation: "Count the bottles that fall each time. Set them back up and try to knock down more on the next roll.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 15 — 12-24mo
            Activity(
                id: ActivityID.containerNesting,
                title: "Container Nesting",
                subtitle: "Supports size comparison by fitting containers inside each other",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.cognitive, .fineMotor, .selfHelp],
                energyLevel: .low,
                materialIDs: [ItemID.plasticContainers, ItemID.plasticCups],
                stepsMarkdown: """
                Gather containers and cups of different sizes.
                Show your toddler how one fits inside another.
                Encourage them to try nesting them in order.
                Talk about big and small as they explore.
                """,
                safetyNotes: ["Use containers without sharp edges"],
                easierVariation: "Start with just two containers that clearly fit inside each other.",
                harderVariation: "Mix up more sizes and let your toddler figure out the order.",
                stretchVariation: "After nesting, try stacking them upside down into a tower. Compare which arrangement is taller.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 16 — 12-24mo
            Activity(
                id: ActivityID.tubeRolling,
                title: "Tube Rolling Ramp",
                subtitle: "Supports cause-and-effect learning by rolling tubes down a ramp",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.cognitive, .grossMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.paperTowelTubes, ItemID.cushions],
                stepsMarkdown: """
                Lean a cushion against the couch to make a ramp.
                Place a paper towel tube at the top.
                Let it roll down and watch it go!
                Encourage your toddler to try placing the tube at the top.
                """,
                safetyNotes: ["Secure the ramp so it doesn't slip"],
                easierVariation: "Roll the tube yourself and let your toddler chase it.",
                harderVariation: "Try rolling different objects to see which goes faster.",
                stretchVariation: "Line up objects at the bottom as targets to knock over. Talk about fast and slow as different items roll.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 17 — 12-24mo
            Activity(
                id: ActivityID.spoonTransfer,
                title: "Spoon Scooping",
                subtitle: "Practices spoon control by scooping cereal between bowls",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.fineMotor, .selfHelp],
                energyLevel: .low,
                materialIDs: [ItemID.woodenSpoon, ItemID.cereal, ItemID.plasticBowl],
                stepsMarkdown: """
                Place some cereal in one bowl.
                Set an empty bowl next to it.
                Show your toddler how to scoop cereal with the spoon.
                Encourage them to move cereal from one bowl to the other.
                """,
                safetyNotes: ["Check for food allergies", "Expect spills — place a towel underneath"],
                easierVariation: "Use their hands to transfer cereal first, then introduce the spoon.",
                harderVariation: "Try scooping rice instead of cereal for a finer challenge.",
                stretchVariation: "Practice scooping and eating. This supports self-feeding at mealtimes with real food practice.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 1, supervision: .armsReach
            ),

            // 18 — 12-24mo
            Activity(
                id: ActivityID.towelTugPlay,
                title: "Towel Tug Play",
                subtitle: "Supports upper body strength with a gentle pulling game",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.grossMotor, .socialEmotional],
                energyLevel: .medium,
                materialIDs: [ItemID.towels],
                stepsMarkdown: """
                Sit on the floor facing your toddler.
                Each hold one end of a towel.
                Gently pull back and forth like a tug-of-war.
                Let your toddler "win" and fall into giggles!
                """,
                safetyNotes: ["Pull gently — do not yank", "Play on a soft surface"],
                easierVariation: "Hold the towel still and let your toddler pull on it freely.",
                harderVariation: "Stand up and play tug while both standing.",
                stretchVariation: "Use the towel to gently pull your toddler toward you while seated. Take turns pulling each other.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 19 — 12-24mo
            Activity(
                id: ActivityID.animalSoundSafari,
                title: "Animal Sound Safari",
                subtitle: "Encourages early words by matching stuffed animals with their sounds",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.language, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.stuffedAnimals],
                stepsMarkdown: """
                Line up a few stuffed animals on the floor.
                Pick one up and make its sound: "Moo! This is a cow!"
                Hold up another: "What does the dog say? Woof!"
                Encourage your toddler to point or make sounds back.
                """,
                safetyNotes: ["Use stuffed animals without small removable parts"],
                easierVariation: "Use just one animal and repeat its sound several times.",
                harderVariation: "Make a sound first and ask your toddler to point to the matching animal.",
                stretchVariation: "Walk the animals around the room on a safari adventure. Narrate what each animal is doing to build vocabulary.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 20 — 12-24mo
            Activity(
                id: ActivityID.bodyPartSong,
                title: "Body Part Singing",
                subtitle: "Supports body awareness by singing and touching body parts",
                minAgeMonths: 12, maxAgeMonths: 24,
                skills: [.language, .grossMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.stuffedAnimals],
                stepsMarkdown: """
                Sit with your toddler and a stuffed animal.
                Sing "Head, shoulders, knees, and toes" while pointing.
                Touch each body part on the stuffed animal too.
                Encourage your toddler to follow along.
                """,
                safetyNotes: ["Keep movements gentle to avoid bumps"],
                easierVariation: "Focus on just head and toes to start.",
                harderVariation: "Speed up the song and see if your toddler can keep up.",
                stretchVariation: "Add new body parts each day: elbows, chin, belly. Point to them on the stuffed animal and on yourselves.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 21 — 15-30mo
            Activity(
                id: ActivityID.tapeLineWalk,
                title: "Tape Line Walk",
                subtitle: "Practices balance by walking along a tape line on the floor",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.grossMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.tape],
                stepsMarkdown: """
                Lay a strip of tape in a straight line on the floor.
                Show your toddler how to walk along the line heel to toe.
                Hold their hand at first for balance.
                Cheer as they make their way to the end.
                """,
                safetyNotes: ["Use painter's tape that won't damage floors", "Clear the area of tripping hazards"],
                easierVariation: "Let your toddler walk near the line without needing to stay on it.",
                harderVariation: "Make the tape line curve or zigzag.",
                stretchVariation: "Add a second line and let your toddler choose which path to walk. Try walking backward along the line.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 22 — 15-30mo
            Activity(
                id: ActivityID.clothespinDrop,
                title: "Clothespin Drop",
                subtitle: "Practices pinch grip by dropping clothespins into a bottle",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.clothespins, ItemID.emptyBottles],
                stepsMarkdown: """
                Place an empty bottle upright on the floor.
                Show your toddler how to hold a clothespin over the opening.
                Let them drop it in — listen for the clink!
                Dump them out and try again.
                """,
                safetyNotes: ["Clothespins can pinch — supervise closely", "Use a wide-mouth bottle"],
                easierVariation: "Use a wider container like a plastic cup instead of a bottle.",
                harderVariation: "Use a narrower bottle opening for more precision.",
                stretchVariation: "Count the clothespins as they drop in. Try to beat your count from the last round.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 23 — 15-30mo
            Activity(
                id: ActivityID.waterPainting,
                title: "Water Painting",
                subtitle: "Encourages creative expression by painting with water on paper",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.fineMotor, .sensory],
                energyLevel: .low,
                materialIDs: [ItemID.water, ItemID.sponge, ItemID.paper, ItemID.towels],
                stepsMarkdown: """
                Lay paper on the floor or tape it to a surface.
                Dip a sponge in a small bowl of water.
                Show your toddler how to "paint" with the wet sponge on paper.
                Watch the wet marks appear and then slowly dry.
                """,
                safetyNotes: ["Use only a small amount of water", "Place towels underneath to catch drips"],
                easierVariation: "Let your toddler just pat the wet sponge on the paper freely.",
                harderVariation: "Try drawing shapes or letters with the wet sponge.",
                stretchVariation: "Talk about wet and dry as the water evaporates. This supports early science concepts of change over time.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 1, supervision: .sameRoom
            ),

            // 24 — 15-30mo
            Activity(
                id: ActivityID.pastaDropGame,
                title: "Pasta Tube Drop",
                subtitle: "Practices precision by dropping pasta through a tube",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.dryPasta, ItemID.paperTowelTubes, ItemID.plasticBowl],
                stepsMarkdown: """
                Hold a paper towel tube upright over a bowl.
                Show your toddler how to drop pasta into the top.
                Listen for the sound as it lands in the bowl below.
                Let them drop pieces one by one.
                """,
                safetyNotes: ["Supervise closely — pasta can be a choking hazard", "Not for toddlers who still mouth objects"],
                easierVariation: "Hold the tube low so the drop is very short.",
                harderVariation: "Try a longer tube or a narrower tube opening.",
                stretchVariation: "Count each piece as it drops. After dropping all of them, count the pieces in the bowl together.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 25 — 15-30mo
            Activity(
                id: ActivityID.blanketTug,
                title: "Blanket Rescue",
                subtitle: "Supports problem-solving by pulling toys out from under a blanket",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.cognitive, .grossMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.blankets, ItemID.stuffedAnimals, ItemID.blocks],
                stepsMarkdown: """
                Place a few toys on the floor and cover them with a blanket.
                Say "Oh no, the toys are hiding! Can you rescue them?"
                Let your toddler pull the blanket off to find them.
                Name each toy as they uncover it.
                """,
                safetyNotes: ["Use a lightweight blanket that's easy to pull"],
                easierVariation: "Leave parts of the toys peeking out from under the blanket.",
                harderVariation: "Ask your toddler to find a specific toy under the blanket by feel.",
                stretchVariation: "After rescuing, sort the toys into groups: animals in one pile, blocks in another. This practices categorization skills.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 26 — 15-30mo
            Activity(
                id: ActivityID.cupHidingGame,
                title: "Cup Shell Game",
                subtitle: "Supports memory and attention by finding a hidden item under a cup",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.cognitive, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.plasticCups, ItemID.cottonBalls],
                stepsMarkdown: """
                Place two cups upside down on the floor.
                Show your toddler a cotton ball and hide it under one cup.
                Ask "Where did it go?"
                Let them lift a cup to find it. Cheer when they do!
                """,
                safetyNotes: ["Supervise closely with cotton balls", "Use large cups that are easy to grip"],
                easierVariation: "Use just one cup so your toddler always finds it.",
                harderVariation: "Use three cups and slowly swap their positions.",
                stretchVariation: "Let your toddler be the hider. Watch them practice hiding the item and asking you to find it.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 27 — 15-30mo
            Activity(
                id: ActivityID.spongeStacking,
                title: "Sponge Stacking Tower",
                subtitle: "Practices steady hands by stacking sponges into a tower",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.sponge],
                stepsMarkdown: """
                Cut a dry sponge into smaller pieces if needed.
                Show your toddler how to stack sponge pieces on top of each other.
                Build a tower together one piece at a time.
                See how tall you can build before it tumbles!
                """,
                safetyNotes: ["Use clean, dry sponges", "Watch that pieces are not mouthed"],
                easierVariation: "Stack just two pieces and celebrate the tiny tower.",
                harderVariation: "Try building on an uneven surface for extra challenge.",
                stretchVariation: "Compare your sponge tower to a block tower. Talk about which is taller and why one wobbles more.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 28 — 15-30mo
            Activity(
                id: ActivityID.basketballBasket,
                title: "Basketball Basket",
                subtitle: "Practices aiming by tossing balls into a laundry basket",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.grossMotor, .socialEmotional],
                energyLevel: .high,
                materialIDs: [ItemID.balls, ItemID.laundryBasket],
                stepsMarkdown: """
                Place the laundry basket against a wall.
                Stand a few steps back with your toddler.
                Show them how to toss a ball into the basket.
                Take turns and cheer each other on.
                """,
                safetyNotes: ["Use soft balls only", "Clear the area of breakable items"],
                easierVariation: "Stand right next to the basket and drop the ball in.",
                harderVariation: "Move further back or tilt the basket on its side for a smaller target.",
                stretchVariation: "Keep score together by counting baskets made. Practice saying \"my turn\" and \"your turn\" for each throw.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 29 — 15-30mo
            Activity(
                id: ActivityID.stuffedAnimalParade,
                title: "Stuffed Animal Parade",
                subtitle: "Encourages imaginative walking by leading stuffed animals in a line",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.grossMotor, .language, .socialEmotional],
                energyLevel: .medium,
                materialIDs: [ItemID.stuffedAnimals, ItemID.laundryBasket],
                stepsMarkdown: """
                Gather several stuffed animals in a laundry basket.
                Line them up on the floor in a row.
                Say "Let's go on a parade!" and walk alongside the line.
                Carry one animal and encourage your toddler to carry another.
                """,
                safetyNotes: ["Clear the walking path of obstacles"],
                easierVariation: "Just carry one animal around the room together.",
                harderVariation: "Name each animal and narrate where the parade is going.",
                stretchVariation: "Sing a marching song as you parade. Stop and say hello to each room you visit. This practices narrative language skills.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 30 — 15-30mo
            Activity(
                id: ActivityID.paperBallToss,
                title: "Paper Ball Toss",
                subtitle: "Practices throwing by crumpling paper and tossing it into a target",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.grossMotor, .fineMotor, .selfHelp],
                energyLevel: .medium,
                materialIDs: [ItemID.paper, ItemID.laundryBasket],
                stepsMarkdown: """
                Help your toddler crumple sheets of paper into balls.
                Place the laundry basket a few steps away.
                Show them how to toss the paper balls toward the basket.
                Collect the balls and try again.
                """,
                safetyNotes: ["Use lightweight paper that won't cause paper cuts"],
                easierVariation: "Stand right next to the basket and drop the balls in.",
                harderVariation: "Move the basket further away or try an overhand throw.",
                stretchVariation: "Count how many paper balls land inside. Crumpling the paper itself is great fine motor practice.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 1, supervision: .sameRoom
            ),

            // 31 — 15-30mo
            Activity(
                id: ActivityID.measuringCupNest,
                title: "Measuring Cup Nesting",
                subtitle: "Supports size ordering by nesting measuring cups together",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.cognitive, .fineMotor],
                energyLevel: .low,
                materialIDs: [ItemID.measuringCups],
                stepsMarkdown: """
                Spread out the measuring cups on the floor.
                Show your toddler the biggest and smallest cup.
                Demonstrate nesting one inside another by size.
                Let them try putting them in order.
                """,
                safetyNotes: ["Use plastic measuring cups without sharp edges"],
                easierVariation: "Start with just two cups that clearly nest.",
                harderVariation: "Mix up more sizes and let your toddler sort them all.",
                stretchVariation: "After nesting, try stacking them upside down. Use words like biggest, smallest, and medium to build vocabulary.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 32 — 15-30mo
            Activity(
                id: ActivityID.cushionHop,
                title: "Cushion Hopping",
                subtitle: "Supports jumping skills by hopping between cushions",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.grossMotor],
                energyLevel: .high,
                materialIDs: [ItemID.cushions],
                stepsMarkdown: """
                Place cushions on the floor in a row with small gaps.
                Show your toddler how to step or hop from one to the next.
                Hold their hands for balance at first.
                Cheer as they make it from cushion to cushion.
                """,
                safetyNotes: ["Use flat, stable cushions that won't slide", "Stay within arm's reach", "Place on carpet or soft surface"],
                easierVariation: "Place cushions touching each other so there's no gap.",
                harderVariation: "Space cushions further apart for bigger jumps.",
                stretchVariation: "Call out directions: hop forward, hop backward, stop! This practices listening and following instructions.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 33 — 18-36mo
            Activity(
                id: ActivityID.washclothFolding,
                title: "Washcloth Folding Helper",
                subtitle: "Supports self-help skills by practicing simple folding",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.selfHelp, .fineMotor],
                energyLevel: .low,
                materialIDs: [ItemID.washcloths],
                stepsMarkdown: """
                Place a washcloth flat on the floor.
                Show your toddler how to fold it in half.
                Let them try to fold their own washcloth.
                Stack the folded washcloths in a neat pile.
                """,
                safetyNotes: ["Use small, lightweight washcloths that are easy to handle"],
                easierVariation: "Just crumple the washcloth into a ball instead of folding.",
                harderVariation: "Try folding in half and then in half again for a smaller square.",
                stretchVariation: "Sort washcloths by color before folding. This combines sorting and real-life helping skills together.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 34 — 18-36mo
            Activity(
                id: ActivityID.riceShakerBottle,
                title: "Rice Shaker Band",
                subtitle: "Supports rhythm practice by shaking homemade rice instruments",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.sensory, .socialEmotional],
                energyLevel: .medium,
                materialIDs: [ItemID.rice, ItemID.emptyBottles, ItemID.tape],
                stepsMarkdown: """
                Fill two bottles with small amounts of rice.
                Seal the caps tightly and secure with tape.
                Give one shaker to your toddler and keep one.
                Shake together to the beat of a song you sing.
                """,
                safetyNotes: ["Seal caps securely with tape", "Check for leaks before each use"],
                easierVariation: "Shake the bottles yourself and let your toddler listen and clap along.",
                harderVariation: "Take turns: one person shakes while the other sings.",
                stretchVariation: "Try shaking fast during the chorus and slow during the verses. This supports listening to patterns in music.",
                estimatedMinutes: 10, setupMinutes: 2, setupComplexity: 1, messLevel: 0, supervision: .sameRoom
            ),

            // 35 — 18-36mo
            Activity(
                id: ActivityID.scarfTugOfWar,
                title: "Scarf Tug of War",
                subtitle: "Supports cooperation by playing a gentle pulling game",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.grossMotor, .socialEmotional],
                energyLevel: .medium,
                materialIDs: [ItemID.scarves],
                stepsMarkdown: """
                Each hold one end of a long scarf.
                Gently pull back and forth.
                Say "Pull! Pull!" and make it fun.
                Let your toddler win and tumble into giggles.
                """,
                safetyNotes: ["Pull gently — never yank", "Play on a soft surface away from furniture"],
                easierVariation: "Hold the scarf loosely and let your toddler pull it toward them.",
                harderVariation: "Use both hands and pull while standing for more balance challenge.",
                stretchVariation: "Take turns: pull, then freeze. Say stop and go. This practices impulse control and listening.",
                estimatedMinutes: 5, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 36 — 18-36mo
            Activity(
                id: ActivityID.cottonBallBlow,
                title: "Cotton Ball Blow Race",
                subtitle: "Practices breath control by blowing cotton balls across a surface",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.sensory, .grossMotor],
                energyLevel: .low,
                materialIDs: [ItemID.cottonBalls, ItemID.tape],
                stepsMarkdown: """
                Place a cotton ball on a flat surface like a table.
                Mark a finish line with tape.
                Show your toddler how to blow the cotton ball toward the line.
                Take turns blowing and see who reaches the line first.
                """,
                safetyNotes: ["Supervise to prevent cotton balls from being mouthed", "Ensure surface is clean"],
                easierVariation: "Use a straw or paper towel tube to direct the air for easier blowing.",
                harderVariation: "Set up an obstacle course with small items for the cotton ball to navigate.",
                stretchVariation: "Try blowing softly and hard. Talk about gentle and strong breaths. This supports oral motor skills.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 37 — 18-36mo
            Activity(
                id: ActivityID.boxCar,
                title: "Cardboard Box Car",
                subtitle: "Encourages pretend play by turning a box into a car",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.language, .socialEmotional],
                energyLevel: .medium,
                materialIDs: [ItemID.cardboardBox, ItemID.crayons, ItemID.paper],
                stepsMarkdown: """
                Help your toddler sit in a cardboard box.
                Tape a paper plate or circle of paper to the front as a steering wheel.
                Make car sounds: "Vroom vroom!"
                Ask where they want to drive to.
                """,
                safetyNotes: ["Ensure the box is sturdy and stable", "Remove any staples or sharp edges"],
                easierVariation: "Just sit in the box together and make driving sounds.",
                harderVariation: "Draw dashboard buttons on paper and tape them inside the box.",
                stretchVariation: "Drive to pretend destinations: the store, grandma's house. Talk about what you see along the way to build narrative skills.",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 1, messLevel: 0, supervision: .sameRoom
            ),

            // 38 — 18-36mo
            Activity(
                id: ActivityID.spoonDrumRoll,
                title: "Spoon Drum Roll",
                subtitle: "Supports listening skills by tapping different surfaces with a spoon",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.sensory, .cognitive],
                energyLevel: .medium,
                materialIDs: [ItemID.woodenSpoon, ItemID.plasticContainers, ItemID.plasticBowl],
                stepsMarkdown: """
                Line up a bowl and containers on the floor.
                Hand your toddler a wooden spoon.
                Tap each surface and listen: "This one sounds different!"
                Encourage your toddler to tap each one and compare.
                """,
                safetyNotes: ["Use a wooden spoon to manage noise level", "Ensure containers are stable"],
                easierVariation: "Tap just one surface and let your toddler copy the rhythm.",
                harderVariation: "Close your eyes and ask which container you tapped by its sound.",
                stretchVariation: "Create a simple pattern: tap bowl, tap container, tap bowl. See if your toddler can repeat the pattern.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 39 — 18-36mo
            Activity(
                id: ActivityID.pillowJump,
                title: "Pillow Jumping",
                subtitle: "Supports leg strength by jumping off a low pillow pile",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.grossMotor],
                energyLevel: .high,
                materialIDs: [ItemID.pillows, ItemID.cushions],
                stepsMarkdown: """
                Stack two or three pillows to make a small mound.
                Help your toddler stand on top.
                Hold their hands and count: "One, two, three, jump!"
                Let them jump off onto a cushion landing pad.
                """,
                safetyNotes: ["Keep the stack low", "Hold your toddler's hands", "Place cushions around for safe landing"],
                easierVariation: "Step off the edge instead of jumping.",
                harderVariation: "Add more pillows for a slightly higher jump.",
                stretchVariation: "Practice jumping and landing with both feet together. Count each successful jump to build number awareness.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 40 — 18-36mo
            Activity(
                id: ActivityID.colanderWeaving,
                title: "Colander Weaving",
                subtitle: "Practices threading by weaving scarves through a colander",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.colander, ItemID.scarves],
                stepsMarkdown: """
                Turn the colander upside down.
                Show your toddler how to push a scarf through the holes.
                Pull it out the other side and push it through another hole.
                Let them explore weaving the scarf in and out.
                """,
                safetyNotes: ["Keep scarves away from neck area", "Use a colander with large holes"],
                easierVariation: "Just push the scarf through one hole and pull it out.",
                harderVariation: "Try using thin strips of paper or fabric for smaller threading.",
                stretchVariation: "Count the holes as you weave through them. Try different colored scarves and make a pattern.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 41 — 18-36mo
            Activity(
                id: ActivityID.blanketSlide,
                title: "Blanket Slide",
                subtitle: "Supports whole-body movement by sliding on a blanket across the floor",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.grossMotor, .socialEmotional],
                energyLevel: .high,
                materialIDs: [ItemID.blankets],
                stepsMarkdown: """
                Lay a blanket flat on a smooth floor.
                Help your toddler sit on one end.
                Gently pull the other end to slide them across the floor.
                Make whooshing sounds as they glide!
                """,
                safetyNotes: ["Use only on smooth floors, not carpet", "Pull slowly and gently", "Stay close to prevent tipping"],
                easierVariation: "Pull very slowly a short distance.",
                harderVariation: "Let your toddler lie down and pull them a bit faster.",
                stretchVariation: "Set up destinations around the room. Ask your toddler where they want to go next. This encourages communication and choice-making.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 42 — 18-36mo
            Activity(
                id: ActivityID.sockBallThrow,
                title: "Sock Ball Throwing",
                subtitle: "Practices overhand throwing with safe, soft sock balls",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.grossMotor],
                energyLevel: .high,
                materialIDs: [ItemID.socks, ItemID.laundryBasket],
                stepsMarkdown: """
                Roll pairs of socks into balls.
                Place the laundry basket a few steps away.
                Show your toddler how to throw a sock ball toward the basket.
                Take turns throwing and collecting.
                """,
                safetyNotes: ["Sock balls are soft and safe to throw indoors", "Clear the area of breakable items"],
                easierVariation: "Stand right at the basket and drop the sock balls in.",
                harderVariation: "Move further away or aim for a smaller target like a box.",
                stretchVariation: "Count the baskets you each make. Say my turn and your turn to practice taking turns.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 43 — 18-36mo
            Activity(
                id: ActivityID.potLidMatching,
                title: "Pot and Lid Matching",
                subtitle: "Supports size matching by pairing pots with their lids",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.cognitive, .fineMotor, .selfHelp],
                energyLevel: .low,
                materialIDs: [ItemID.potWithLid, ItemID.plasticContainers],
                stepsMarkdown: """
                Separate pots and containers from their lids.
                Spread them out on the floor.
                Ask your toddler to find the lid that fits each container.
                Cheer when they find a match!
                """,
                safetyNotes: ["Use lightweight plastic containers when possible", "Ensure no sharp edges on lids"],
                easierVariation: "Start with just one pot and its lid to match.",
                harderVariation: "Mix in more containers and lids of similar sizes.",
                stretchVariation: "Talk about big lids and small lids. Ask your toddler to predict which lid fits before trying. This supports early reasoning.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 44 — 18-36mo
            Activity(
                id: ActivityID.stuffedAnimalFeedTime,
                title: "Stuffed Animal Feed Time",
                subtitle: "Supports nurturing behavior by pretending to feed stuffed animals",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.socialEmotional, .language],
                energyLevel: .low,
                materialIDs: [ItemID.stuffedAnimals, ItemID.plasticBowl, ItemID.woodenSpoon],
                stepsMarkdown: """
                Set up a stuffed animal at the table or on the floor.
                Place a bowl and spoon in front of it.
                Say "Bear is hungry! Can you feed bear?"
                Let your toddler pretend to scoop and feed.
                """,
                safetyNotes: ["No real food needed — all pretend"],
                easierVariation: "Just hold the spoon near the animal's mouth together.",
                harderVariation: "Line up multiple animals and give each a turn being fed.",
                stretchVariation: "Ask what each animal wants to eat. Practice please and thank you during the pretend meal. This supports social language.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 45 — 18-36mo
            Activity(
                id: ActivityID.ballKicking,
                title: "Ball Kicking Practice",
                subtitle: "Supports leg coordination by kicking a ball toward a target",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.grossMotor],
                energyLevel: .high,
                materialIDs: [ItemID.balls, ItemID.laundryBasket],
                stepsMarkdown: """
                Place a ball on the floor in an open space.
                Turn the laundry basket on its side as a goal.
                Show your toddler how to kick the ball toward the basket.
                Celebrate every kick, goal or not!
                """,
                safetyNotes: ["Use a soft, lightweight ball", "Clear the area of furniture and breakables", "Play on a non-slip surface"],
                easierVariation: "Just practice kicking the ball freely without a target.",
                harderVariation: "Move the goal further away or use a smaller box as a target.",
                stretchVariation: "Take turns kicking. Count your goals together. This practices turn-taking alongside physical activity.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 46 — 18-36mo
            Activity(
                id: ActivityID.waterSplashPlay,
                title: "Water Splash Exploration",
                subtitle: "Supports sensory discovery through splashing and feeling water",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.sensory, .fineMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.water, ItemID.plasticContainers, ItemID.towels, ItemID.sponge],
                stepsMarkdown: """
                Lay towels on the floor.
                Fill a container with a shallow amount of water.
                Let your toddler splash, pat, and explore the water.
                Offer a sponge to squeeze and feel different textures.
                """,
                safetyNotes: ["Use only a small amount of water", "Stay within arm's reach at all times", "Dry spills promptly"],
                easierVariation: "Let your toddler just dip their fingers in and feel the water.",
                harderVariation: "Add a second container and practice transferring water with the sponge.",
                stretchVariation: "Talk about warm and cold, wet and dry. This supports early vocabulary about sensory experiences.",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 1, messLevel: 2, supervision: .armsReach
            ),

            // 47 — 18-36mo
            Activity(
                id: ActivityID.blockKnockDown,
                title: "Block Tower Knock Down",
                subtitle: "Practices turn-taking by building and knocking down block towers",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.socialEmotional, .fineMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.blocks],
                stepsMarkdown: """
                Build a tower of blocks together.
                Say "Ready... set... knock it down!"
                Let your toddler knock the tower over.
                Rebuild together and do it again.
                """,
                safetyNotes: ["Use lightweight blocks that won't hurt when they fall"],
                easierVariation: "Build a two-block tower for a quick knock-down.",
                harderVariation: "Take turns adding one block each and see how tall you get.",
                stretchVariation: "Before knocking down, count the blocks together. After several rounds, see if you can build a taller tower each time.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 48 — 18-36mo
            Activity(
                id: ActivityID.animalNightNight,
                title: "Animal Bedtime Routine",
                subtitle: "Supports self-help understanding by putting stuffed animals to bed",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.selfHelp, .socialEmotional, .language],
                energyLevel: .low,
                materialIDs: [ItemID.stuffedAnimals, ItemID.blankets, ItemID.washcloths],
                stepsMarkdown: """
                Say "It's bedtime for the animals!"
                Help your toddler lay a stuffed animal down.
                Use a washcloth to wipe the animal's face.
                Tuck the animal in with a blanket and say "Night night!"
                """,
                safetyNotes: ["Use soft materials only"],
                easierVariation: "Just tuck one animal under a blanket and say goodnight.",
                harderVariation: "Add a full routine: wash face, brush teeth (pretend), then tuck in.",
                stretchVariation: "Put several animals to bed and narrate the whole routine. This mirrors your toddler's own bedtime and supports understanding daily routines.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 49 — 18-36mo
            Activity(
                id: ActivityID.bowlDrumCircle,
                title: "Bowl Drum Circle",
                subtitle: "Encourages musical exploration by drumming on bowls together",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.sensory, .socialEmotional],
                energyLevel: .medium,
                materialIDs: [ItemID.plasticBowl, ItemID.woodenSpoon],
                stepsMarkdown: """
                Turn a plastic bowl upside down on the floor.
                Give your toddler a wooden spoon as a drumstick.
                Sit with your own bowl and spoon facing each other.
                Tap a rhythm and encourage your toddler to play along.
                """,
                safetyNotes: ["Use plastic bowls only", "Wooden spoons keep noise manageable"],
                easierVariation: "Just let your toddler tap freely with no rhythm to follow.",
                harderVariation: "Tap a pattern and see if your toddler can copy it.",
                stretchVariation: "Sing a song and drum along to the beat together. Try drumming fast and slow, loud and soft.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 50 — 18-36mo
            Activity(
                id: ActivityID.sockHandPuppet,
                title: "Sock Hand Puppet Chat",
                subtitle: "Supports conversational skills through puppet dialogue",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.language, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.socks, ItemID.crayons, ItemID.paper],
                stepsMarkdown: """
                Put a sock on each hand — one for you, one for your toddler.
                Draw eyes on small pieces of paper and tape them to the socks.
                Make your puppet talk to your toddler's puppet.
                Encourage your toddler to make their puppet respond.
                """,
                safetyNotes: ["Use clean socks", "Keep crayon marks away from mouths"],
                easierVariation: "Skip the eyes and just make the sock puppet talk with hand movements.",
                harderVariation: "Create a simple story with the two puppets.",
                stretchVariation: "Use the puppets to act out daily scenarios: saying hello, sharing, or asking for help. This practices real social situations.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 51 — 24-36mo
            Activity(
                id: ActivityID.cupPhoneChat,
                title: "Cup Phone Chat",
                subtitle: "Encourages conversation practice through pretend phone calls",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.language, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.plasticCups],
                stepsMarkdown: """
                Give your toddler a plastic cup to hold like a phone.
                Hold one yourself and say "Ring ring! Hello!"
                Ask simple questions: "What did you eat today?"
                Encourage them to ask you a question back.
                """,
                safetyNotes: ["Use lightweight plastic cups"],
                easierVariation: "Just say hello and goodbye into the cup phones.",
                harderVariation: "Pretend to call specific people: grandma, a friend.",
                stretchVariation: "Practice different phone conversations: ordering food, calling a friend, making a doctor appointment. This supports real-world communication skills.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 52 — 24-36mo
            Activity(
                id: ActivityID.clothespinMatch,
                title: "Clothespin Color Matching",
                subtitle: "Practices pinching and matching by clipping clothespins to colored paper",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.clothespins, ItemID.paper, ItemID.crayons],
                stepsMarkdown: """
                Color patches on a piece of paper with different crayons.
                Show your toddler how to open a clothespin and clip it to the paper.
                Encourage them to clip each clothespin near a matching color.
                Celebrate each successful match!
                """,
                safetyNotes: ["Clothespins can pinch — supervise closely", "Show safe handling before starting"],
                easierVariation: "Just practice opening and closing the clothespin first.",
                harderVariation: "Add more colors or clip clothespins around the edge of a bowl.",
                stretchVariation: "Name each color as you clip. Try clipping them in a specific order to practice sequencing.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 53 — 24-36mo
            Activity(
                id: ActivityID.tissueGhost,
                title: "Tissue Paper Ghost",
                subtitle: "Encourages pretend play by making a simple tissue paper puppet",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .language],
                energyLevel: .low,
                materialIDs: [ItemID.tissuePaper, ItemID.cottonBalls],
                stepsMarkdown: """
                Place a cotton ball in the center of a tissue paper sheet.
                Wrap the tissue around the cotton ball to make a head.
                Twist gently below the head to form a ghost shape.
                Wave your ghost around and say "Whooo!"
                """,
                safetyNotes: ["Supervise closely with cotton balls", "Tissue paper should not be mouthed"],
                easierVariation: "Make the ghost yourself and let your toddler play with it.",
                harderVariation: "Let your toddler try making their own ghost with help.",
                stretchVariation: "Make a family of ghosts and give each a name. Create a little story about their ghost adventure together.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 1, messLevel: 0, supervision: .armsReach
            ),

            // 54 — 24-36mo
            Activity(
                id: ActivityID.pastaStringing,
                title: "Pasta Stringing",
                subtitle: "Practices threading skills by stringing pasta onto a shoelace or scarf",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.dryPasta, ItemID.scarves],
                stepsMarkdown: """
                Tie a knot at one end of a thin scarf.
                Show your toddler how to thread pasta tubes onto the scarf.
                Let them slide each piece of pasta down the scarf.
                Admire the pasta necklace when finished!
                """,
                safetyNotes: ["Dry pasta can be a choking hazard — supervise closely", "Not for toddlers who still mouth objects", "Use large tube-shaped pasta"],
                easierVariation: "Use very large pasta tubes for easier threading.",
                harderVariation: "Try smaller pasta shapes for a bigger challenge.",
                stretchVariation: "Alternate pasta types to create a pattern. Count the pieces as you add them. This practices patterns and number awareness.",
                estimatedMinutes: 15, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 55 — 24-36mo
            Activity(
                id: ActivityID.pillowBalance,
                title: "Pillow Head Balance",
                subtitle: "Practices balance and body control by walking with a pillow on the head",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.grossMotor, .cognitive],
                energyLevel: .medium,
                materialIDs: [ItemID.pillows],
                stepsMarkdown: """
                Place a small, light pillow on your toddler's head.
                Show them how to walk slowly to keep it balanced.
                Walk alongside them doing the same.
                See how far you can walk before it falls off!
                """,
                safetyNotes: ["Use a very lightweight pillow", "Clear the walking path", "Walk slowly"],
                easierVariation: "Hold the pillow on their head while they walk.",
                harderVariation: "Try walking a longer distance or in a circle.",
                stretchVariation: "Try balancing other soft items: a washcloth, a stuffed animal. Compare which is easiest. This supports body awareness.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 56 — 24-36mo
            Activity(
                id: ActivityID.laundryBasketTunnel,
                title: "Laundry Basket Tunnel",
                subtitle: "Supports spatial awareness by crawling through a basket tunnel",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.grossMotor, .cognitive],
                energyLevel: .high,
                materialIDs: [ItemID.laundryBasket, ItemID.blankets],
                stepsMarkdown: """
                Turn the laundry basket upside down.
                Remove or lift one end so there's an opening.
                Drape a blanket over it to create a tunnel effect.
                Encourage your toddler to crawl through the tunnel.
                """,
                safetyNotes: ["Ensure the basket is stable and won't collapse", "Stay close to assist"],
                easierVariation: "Just drape the blanket over two chairs for an easier crawl-through.",
                harderVariation: "Set up multiple baskets or chairs in a row for a longer tunnel.",
                stretchVariation: "Place a stuffed animal at the far end as a goal to reach. Narrate the journey: through the tunnel, past the pillow, to the bear!",
                estimatedMinutes: 10, setupMinutes: 2, setupComplexity: 1, messLevel: 0, supervision: .armsReach
            ),

            // 57 — 24-36mo
            Activity(
                id: ActivityID.crayonRubbing,
                title: "Crayon Texture Rubbing",
                subtitle: "Supports sensory awareness by rubbing crayons over textured surfaces",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.sensory, .fineMotor],
                energyLevel: .low,
                materialIDs: [ItemID.crayons, ItemID.paper],
                stepsMarkdown: """
                Place a sheet of paper over a textured surface like a colander or cardboard.
                Show your toddler how to rub a crayon sideways over the paper.
                Watch the texture pattern appear on the paper.
                Try different surfaces for different patterns.
                """,
                safetyNotes: ["Use non-toxic crayons", "Supervise to prevent eating crayons"],
                easierVariation: "Hold the paper steady while your toddler rubs the crayon.",
                harderVariation: "Let your toddler choose surfaces to rub and predict what the pattern will look like.",
                stretchVariation: "Create a collection of rubbings from different surfaces. Talk about bumpy, smooth, and rough to build texture vocabulary.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 58 — 24-36mo
            Activity(
                id: ActivityID.blockColorSort,
                title: "Block Color Sorting",
                subtitle: "Supports categorization by sorting blocks by color into cups",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.cognitive, .fineMotor, .selfHelp],
                energyLevel: .low,
                materialIDs: [ItemID.blocks, ItemID.plasticCups],
                stepsMarkdown: """
                Place colored blocks in a pile on the floor.
                Set out a plastic cup for each color.
                Pick up a block and say "This one is red — it goes in this cup!"
                Encourage your toddler to sort the rest.
                """,
                safetyNotes: ["Use blocks large enough to not be a choking hazard"],
                easierVariation: "Start with just two colors to sort.",
                harderVariation: "Add more colors or sort by shape and color.",
                stretchVariation: "After sorting, count how many blocks are in each cup. Which cup has the most? This practices comparison and counting.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 59 — 24-36mo
            Activity(
                id: ActivityID.tubeTelescopeWalk,
                title: "Tube Telescope Walk",
                subtitle: "Encourages observation skills by looking through a tube around the room",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.language, .cognitive],
                energyLevel: .medium,
                materialIDs: [ItemID.paperTowelTubes],
                stepsMarkdown: """
                Give your toddler a paper towel tube to look through.
                Say "Let's go on a looking adventure!"
                Walk around the room and look through the telescope.
                Ask "What do you see?" and name objects together.
                """,
                safetyNotes: ["Don't let your toddler walk while looking through the tube", "Pause to look, then walk to the next spot"],
                easierVariation: "Sit in one place and look at things around the room through the tube.",
                harderVariation: "Play I-spy: describe something and see if your toddler can find it through their telescope.",
                stretchVariation: "Look for specific things: something red, something soft, something big. This supports vocabulary and descriptive language.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 60 — 24-36mo
            Activity(
                id: ActivityID.paperCrownMaking,
                title: "Paper Crown Making",
                subtitle: "Supports creative expression by making and wearing a paper crown",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.paper, ItemID.tape, ItemID.crayons],
                stepsMarkdown: """
                Fold a piece of paper in half lengthwise.
                Cut zigzag points along the top edge for the crown shape.
                Let your toddler decorate it with crayons.
                Tape it into a circle to fit their head and crown them!
                """,
                safetyNotes: ["Adult handles the scissors", "Ensure tape is secure so crown stays together"],
                easierVariation: "Pre-make the crown and just let your toddler decorate it.",
                harderVariation: "Let your toddler help choose the shape and add extra decorations.",
                stretchVariation: "Make crowns for the whole family or stuffed animals too. Have a royal parade around the house. This supports imaginative play.",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 2, messLevel: 1, supervision: .sameRoom
            ),

            // 61 — 24-36mo
            Activity(
                id: ActivityID.blanketFortReading,
                title: "Blanket Fort Story Time",
                subtitle: "Supports quiet focus by reading together in a cozy fort",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.language, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.blankets, ItemID.pillows, ItemID.stuffedAnimals],
                stepsMarkdown: """
                Drape a blanket over chairs or a table to make a fort.
                Add pillows inside for comfort.
                Bring stuffed animals as fort friends.
                Climb inside together and tell or make up stories.
                """,
                safetyNotes: ["Ensure the fort is stable and won't collapse", "Use breathable blankets"],
                easierVariation: "Just drape a blanket and sit under it together without a full fort.",
                harderVariation: "Let your toddler help decide how to build the fort.",
                stretchVariation: "Make up a story together where the stuffed animals are characters. Let your toddler decide what happens next. This supports narrative skills.",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 1, messLevel: 0, supervision: .sameRoom
            ),

            // 62 — 24-36mo
            Activity(
                id: ActivityID.cerealNecklace,
                title: "Cereal Necklace Threading",
                subtitle: "Practices fine motor threading by stringing cereal onto a scarf",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.cereal, ItemID.scarves],
                stepsMarkdown: """
                Tie a knot at one end of a thin scarf.
                Show your toddler how to thread O-shaped cereal onto the scarf.
                String them one at a time until you have a necklace.
                Try it on and admire the creation!
                """,
                safetyNotes: ["Check for food allergies", "Supervise closely to prevent choking", "Use large O-shaped cereal"],
                easierVariation: "Thread just a few pieces with hand-over-hand help.",
                harderVariation: "Try alternating cereal types for a pattern.",
                stretchVariation: "Count the cereal pieces as you add them. After wearing the necklace, it can be a healthy snack! This combines creativity with self-feeding.",
                estimatedMinutes: 15, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 63 — 24-36mo
            Activity(
                id: ActivityID.cottonBallPaint,
                title: "Cotton Ball Dabbing Art",
                subtitle: "Supports creative expression by dabbing cotton balls on wet paper",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .sensory],
                energyLevel: .low,
                materialIDs: [ItemID.cottonBalls, ItemID.water, ItemID.paper, ItemID.tape],
                stepsMarkdown: """
                Tape paper to the table.
                Dampen a cotton ball with a little water.
                Show your toddler how to dab the wet cotton ball on the paper.
                Watch the wet marks appear as they dab around.
                """,
                safetyNotes: ["Supervise closely with cotton balls", "Use only water — no paint needed"],
                easierVariation: "Just let them squeeze and feel the wet cotton ball.",
                harderVariation: "Try making shapes by dabbing in patterns.",
                stretchVariation: "Talk about the circles the cotton ball makes. Try big dabs and tiny dabs. This practices hand pressure control.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 1, supervision: .armsReach
            ),

            // 64 — 24-36mo
            Activity(
                id: ActivityID.tubeBallDrop,
                title: "Tube Ball Drop",
                subtitle: "Supports cause-and-effect understanding by dropping balls through tubes",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.cognitive, .fineMotor],
                energyLevel: .medium,
                materialIDs: [ItemID.paperTowelTubes, ItemID.balls, ItemID.tape],
                stepsMarkdown: """
                Tape a paper towel tube at an angle to a wall or box.
                Place a bowl at the bottom end.
                Show your toddler how to drop a small ball into the top.
                Watch it roll down and land in the bowl!
                """,
                safetyNotes: ["Ensure the tube is securely taped", "Use balls that fit easily through the tube"],
                easierVariation: "Hold the tube at a gentle angle in your hands instead of taping it.",
                harderVariation: "Tape two tubes end to end for a longer roll.",
                stretchVariation: "Try different objects to see what fits through and what doesn't. Talk about big and small, too wide and just right. This supports early size reasoning.",
                estimatedMinutes: 10, setupMinutes: 2, setupComplexity: 1, messLevel: 0, supervision: .sameRoom
            ),

            // 65 — 24-36mo
            Activity(
                id: ActivityID.boxMailbox,
                title: "Cardboard Mailbox",
                subtitle: "Encourages pretend play by mailing paper letters through a box slot",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .language, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.cardboardBox, ItemID.paper, ItemID.crayons],
                stepsMarkdown: """
                Cut a letter-sized slot in the top of a cardboard box.
                Let your toddler scribble on paper as pretend letters.
                Show them how to slide the letters through the slot.
                Take turns mailing and checking the mail.
                """,
                safetyNotes: ["Adult handles cutting the slot", "Sand any rough edges on the cut"],
                easierVariation: "Pre-fold the paper so it slides in easily.",
                harderVariation: "Write names on the letters and deliver them to specific stuffed animals.",
                stretchVariation: "Set up a mail route: mail a letter, deliver it to a stuffed animal, and read it aloud. This supports narrative and literacy play.",
                estimatedMinutes: 15, setupMinutes: 2, setupComplexity: 2, messLevel: 0, supervision: .sameRoom
            ),

            // 66 — 24-36mo
            Activity(
                id: ActivityID.towelCapeHero,
                title: "Towel Cape Hero",
                subtitle: "Supports imaginative play by wearing a towel as a superhero cape",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.grossMotor, .socialEmotional, .language],
                energyLevel: .high,
                materialIDs: [ItemID.towels, ItemID.stuffedAnimals],
                stepsMarkdown: """
                Drape a towel over your toddler's shoulders like a cape.
                Say "You're a superhero! Who do you want to save?"
                Set up stuffed animals around the room who need rescuing.
                Run (or walk) to each animal and save the day!
                """,
                safetyNotes: ["Ensure the cape doesn't drag on the ground and cause tripping", "Keep the towel loosely draped, not tied around the neck"],
                easierVariation: "Just wear the cape and walk around being a hero without a mission.",
                harderVariation: "Create a rescue story with obstacles to navigate.",
                stretchVariation: "Give your hero a name and a catchphrase. Narrate the rescue mission together. This supports storytelling and creative expression.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 67 — 24-36mo
            Activity(
                id: ActivityID.cushionStepping,
                title: "Cushion Stepping Stones",
                subtitle: "Supports balance by stepping carefully between cushions",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.grossMotor, .cognitive],
                energyLevel: .medium,
                materialIDs: [ItemID.cushions, ItemID.tape],
                stepsMarkdown: """
                Place cushions on the floor as stepping stones.
                Mark a start and finish line with tape.
                Say "Don't step in the lava — stay on the stones!"
                Guide your toddler from stone to stone.
                """,
                safetyNotes: ["Use flat, stable cushions", "Stay close for balance support", "Play on a soft surface"],
                easierVariation: "Place cushions close together so steps are small.",
                harderVariation: "Spread cushions further apart for bigger steps.",
                stretchVariation: "Call out directions: jump to the big cushion, tiptoe to the small one. This practices listening and following multi-step directions.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 68 — 24-36mo
            Activity(
                id: ActivityID.waterCupFill,
                title: "Water Cup Fill and Pour",
                subtitle: "Supports self-help skills by practicing pouring water into cups",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.selfHelp, .fineMotor],
                energyLevel: .low,
                materialIDs: [ItemID.water, ItemID.plasticCups, ItemID.towels],
                stepsMarkdown: """
                Lay a towel on the table or floor.
                Set out a small pitcher or cup of water and empty cups.
                Show your toddler how to carefully pour water into each cup.
                Practice stopping when the cup is full.
                """,
                safetyNotes: ["Use only a small amount of water", "Stay within arm's reach", "Dry any spills promptly"],
                easierVariation: "Use a very small cup and pour a tiny amount together.",
                harderVariation: "Try filling cups to a specific line or level.",
                stretchVariation: "Set up a pretend drink station for stuffed animals. Serve each animal a cup of water. This practices self-help skills in a play context.",
                estimatedMinutes: 10, setupMinutes: 1, setupComplexity: 0, messLevel: 2, supervision: .armsReach
            ),

            // 69 — 24-36mo
            Activity(
                id: ActivityID.riceDrawing,
                title: "Rice Tray Drawing",
                subtitle: "Supports pre-writing skills by drawing in a tray of rice",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.fineMotor, .sensory, .cognitive],
                energyLevel: .low,
                materialIDs: [ItemID.rice, ItemID.plasticContainers],
                stepsMarkdown: """
                Spread a thin layer of rice in a shallow container.
                Show your toddler how to draw lines with their finger.
                Try drawing shapes: circles, zigzags, straight lines.
                Shake the container to erase and start fresh.
                """,
                safetyNotes: ["Supervise closely to prevent eating raw rice", "Not suitable for toddlers who still mouth everything", "Place a towel underneath"],
                easierVariation: "Just let them run their fingers through the rice freely.",
                harderVariation: "Draw a simple shape and ask your toddler to copy it.",
                stretchVariation: "Try drawing letters or numbers in the rice. Shake to erase and try again. This supports early pre-writing in a sensory way.",
                estimatedMinutes: 15, setupMinutes: 1, setupComplexity: 0, messLevel: 2, supervision: .armsReach
            ),

            // 70 — 24-36mo
            Activity(
                id: ActivityID.emptyFullGame,
                title: "Empty and Full Game",
                subtitle: "Supports understanding of opposites with fill-and-dump play",
                minAgeMonths: 24, maxAgeMonths: 36,
                skills: [.cognitive, .language, .selfHelp],
                energyLevel: .low,
                materialIDs: [ItemID.plasticContainers, ItemID.cottonBalls, ItemID.blocks],
                stepsMarkdown: """
                Place a container on the floor with cotton balls and blocks nearby.
                Say "Let's fill it up!" and drop items in one at a time.
                When it's full say "It's full! Now let's empty it!" and dump it out.
                Talk about empty and full as you go.
                """,
                safetyNotes: ["Supervise closely with cotton balls", "Use large items that aren't a choking hazard"],
                easierVariation: "Use just one type of item to keep it simple.",
                harderVariation: "Try filling different sized containers and comparing which holds more.",
                stretchVariation: "Introduce half-full. Count the items as they go in. This practices counting and early math concepts like quantity.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .armsReach
            ),

            // 71 — 15-30mo
            Activity(
                id: ActivityID.scarfTrail,
                title: "Scarf Trail Follow",
                subtitle: "Encourages movement by following a scarf dragged along the floor",
                minAgeMonths: 15, maxAgeMonths: 30,
                skills: [.grossMotor, .socialEmotional],
                energyLevel: .high,
                materialIDs: [ItemID.scarves],
                stepsMarkdown: """
                Tuck a scarf into the back of your waistband like a tail.
                Walk around the room and let it trail behind you.
                Say "Can you catch my tail?" and walk faster.
                Let your toddler chase and grab the scarf.
                """,
                safetyNotes: ["Clear the area of obstacles", "Walk — don't run — for younger toddlers", "Keep scarves away from necks"],
                easierVariation: "Walk very slowly and let your toddler grab the scarf easily.",
                harderVariation: "Speed up a little and change directions.",
                stretchVariation: "Take turns being the one with the tail. Let your toddler tuck the scarf in and you chase. This practices taking turns and body coordination.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),

            // 72 — 18-36mo
            Activity(
                id: ActivityID.helpDressAnimal,
                title: "Help Dress the Animal",
                subtitle: "Supports dressing skills by wrapping a stuffed animal in a washcloth outfit",
                minAgeMonths: 18, maxAgeMonths: 36,
                skills: [.selfHelp, .fineMotor, .socialEmotional],
                energyLevel: .low,
                materialIDs: [ItemID.stuffedAnimals, ItemID.washcloths, ItemID.socks],
                stepsMarkdown: """
                Say "Bear is cold! Let's help bear get dressed."
                Show your toddler how to wrap a washcloth around the animal.
                Try putting a sock on the animal as a hat or scarf.
                Praise their helping: "Bear is so cozy now!"
                """,
                safetyNotes: ["Use clean socks and washcloths"],
                easierVariation: "Just drape a washcloth over the animal like a blanket.",
                harderVariation: "Try tucking the washcloth in to stay wrapped.",
                stretchVariation: "Practice putting socks on and off the stuffed animal. Talk about each step: first the washcloth, then the sock hat. This mirrors getting dressed routines.",
                estimatedMinutes: 10, setupMinutes: 0, setupComplexity: 0, messLevel: 0, supervision: .sameRoom
            ),
        ]
    }
}
