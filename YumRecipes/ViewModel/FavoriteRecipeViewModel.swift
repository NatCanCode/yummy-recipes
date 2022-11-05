//
//  FavoriteRecipeViewModel.swift
//  YumRecipes
//
//  Created by N N on 31/10/2022.
//

import Foundation

class FavoriteViewModel: ObservableObject {
    
    @Published public var favorites = [RecipeModel]()
    
    
//    Order favorites by first, second and so on
    func moveRecipe(from offsets: IndexSet, to destination: Int) {
        self.favorites.move(fromOffsets: offsets, toOffset: destination)
    }
    
    func addFavorite(recipe: RecipeModel) {
        self.favorites.append(recipe)
    }
    
    func removefavorite(at offsets: IndexSet) {
        self.favorites.remove(atOffsets: offsets)
    }
    // Remove recipe that's already in favorites
    func deleteFavoriteInArray(recipe: RecipeModel) {
        self.favorites.removeAll { $0.id == recipe.id }
    }
    
    func deleteOrRemoveFavorite(recipe: RecipeModel) {
        if favorites.contains(recipe) {
            deleteFavoriteInArray(recipe: recipe)
        } else {
            addFavorite(recipe: recipe)
        }
    }
}
