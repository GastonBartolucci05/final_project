import SwiftUI

struct RecipeRowView: View {
    let recipe: Recipe
    let onToggle: () -> Void

    var body: some View {
        HStack {

            Group {
                if let uiImage = UIImage(named: recipe.imageName) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFill()
                } else {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(width: 44, height: 44)
            .clipShape(RoundedRectangle(cornerRadius: 8))

            VStack(alignment: .leading) {
                Text(recipe.name)
                    .font(.headline)

                Text(recipe.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Button {
                onToggle()
            } label: {
                Image(systemName: recipe.isFavorite ? "heart.fill" : "heart")
                    .foregroundStyle(recipe.isFavorite ? .red : .gray)
            }
            .accessibilityIdentifier("favoriteButton_\(recipe.name)")
        }
    }
}
