//
//  AddRecipeViewModel.swift
//  YumRecipes
//
//  Created by N N on 03/11/2022.
//

import Foundation
import SwiftUI

class AddRecipeViewModel: ObservableObject {
    @Published  var recipes = [RecipeModel]()
    @Published  var selectedImage: Image? = nil
    
    func addRecipe(image: String?, formImage: Image?, name: String, category: RecipeCategory, cost: RecipeCost, level: RecipeLevel, diet: RecipeDiet, season: RecipeSeason, prepTime: String, cookingTime: String, restTime: String, ingredients: [Ingredient], description: String, step: [Step]) {
        
        self.recipes.append(RecipeModel(image: image, formImage: formImage, name: name, category: category, cost: cost, level: level, diet: diet, season: season, prepTime: prepTime, cookingTime: cookingTime, restTime: restTime, ingredients: ingredients, description: description, step: step))
        
        selectedImage = .none
    }
    
    func deleteAddedRecipe(at offset: IndexSet) {
        self.recipes.remove(atOffsets: offset)
    }
    
    func moveAddedRecipe(from offset: IndexSet, to destination: Int) {
        self.recipes.move(fromOffsets: offset, toOffset: destination)
    }
}
