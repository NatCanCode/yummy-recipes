//
//  RecipeListView.swift
//  YumRecipes
//
//  Created by N N on 28/10/2022.
//

import SwiftUI

struct RecipeListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(RecipeCategory.allCases, id: \.self) { section in
                    Section(header: Text(section.rawValue)) {
                        ForEach(recipes.filter({ $0.category == section })) { recipe in
                            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                                ListRowCellView(recipeImage: recipe.image, formImage: nil, recipeName: recipe.name, recipeDescription: recipe.description)
                            }
                        }
                    }
                }
                .navigationBarTitle("Recipes")
            }
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}

struct ListRowCellView: View {
    
    var recipeImage: String?
    let formImage: Image?
    var recipeName: String
    var recipeDescription: String
    
    var body: some View {
        HStack(alignment: .center) {
            if let formImage = formImage {
                formImage
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            } else if let recipeImage = recipeImage {
                Image(recipeImage)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

            VStack(alignment: .leading, spacing: 10) {
                Text(recipeName)
                    .font(.headline)
                Text(recipeDescription)
                    .lineLimit(3)
                    .foregroundColor(.secondary)
            }
        }
    }
}
