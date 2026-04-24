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
    }

    // MARK: - Load

    static func loadIfNeeded(context: ModelContext) {
        let descriptor = FetchDescriptor<HouseholdItem>()
        let count = (try? context.fetchCount(descriptor)) ?? 0
        if count > 0 { return }

        let items = householdItems()
        for item in items {
            context.insert(item)
        }
        for item in items {
            context.insert(InventoryEntry(itemID: item.id, status: .has))
        }
        for activity in activities() {
            context.insert(activity)
        }
        try? context.save()
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
        ]
    }
}
