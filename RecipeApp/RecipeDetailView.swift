import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    let onToggle: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            Group {
                if let uiImage = UIImage(named: recipe.imageName) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                } else {
                    Color.gray
                }
            }
            .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 12))

            Text(recipe.name)
                .font(.largeTitle)

            Text(recipe.description)
                .foregroundStyle(.secondary)

            Text("Ingredients")
                .font(.headline)

            ForEach(recipe.ingredients, id: \.self) { item in
                Text("• \(item)")
            }

            Spacer()

            Button {
                onToggle()
            } label: {
                Label(
                    recipe.isFavorite ? "Remove from Favorites" : "Add to Favorites",
                    systemImage: recipe.isFavorite ? "heart.fill" : "heart"
                )
            }
            .tint(.red)
            .buttonStyle(.bordered)
            .accessibilityIdentifier("detailFavoriteButton")
        }
        .padding()
        .navigationTitle("Details")
    }
}
