import SwiftUI
import SwiftData

struct OnboardingView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var name = ""
    @State private var birthDate = Calendar.current.date(byAdding: .month, value: -18, to: .now)!

    private var ageInMonths: Int {
        max(0, Calendar.current.dateComponents([.month], from: birthDate, to: .now).month ?? 0)
    }

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            Image(systemName: "sparkles")
                .font(.system(size: 52))
                .foregroundStyle(.orange)

            Text("Right Now")
                .font(.largeTitle.bold())

            Text("Simple activities for you and your toddler,\nusing things you already have at home.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            VStack(spacing: 16) {
                TextField("Your toddler's name (optional)", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()

                DatePicker(
                    "Birth date",
                    selection: $birthDate,
                    in: ...Date.now,
                    displayedComponents: .date
                )

                if ageInMonths > 0 {
                    Text("That's about \(ageInMonths) months old")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
            }
            .padding(.horizontal, 32)

            Spacer()

            Button(action: createProfile) {
                Text("Let's Go!")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.orange)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 32)
        }
    }

    private func createProfile() {
        let profile = ChildProfile(
            name: name.isEmpty ? nil : name,
            birthDate: birthDate
        )
        modelContext.insert(profile)
    }
}
