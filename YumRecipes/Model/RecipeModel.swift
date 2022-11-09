//
//  RecipeModel.swift
//  YumRecipes
//
//  Created by N N on 28/10/2022.
//

import Foundation
import SwiftUI

struct RecipeModel: Identifiable, Equatable {
    
    static func == (lhs: RecipeModel, rhs: RecipeModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    let image: String?
    let formImage: Image?
    let name: String
    let category: RecipeCategory
    let cost: RecipeCost
    let level: RecipeLevel
    let diet: RecipeDiet
    let season: RecipeSeason
    let prepTime: String
    let cookingTime: String
    let restTime: String
    let ingredients: [Ingredient] 
    let description: String
    let step: [Step]
}

enum RecipeCategory: String, CaseIterable {
    case starter = "Starter"
    case main = "Main"
    case dessert = "Dessert"
}

enum RecipeCost: String, CaseIterable {
    case cheap = "Cheap"
    case average = "Average"
    case expensive = "Expensive"
}

enum RecipeLevel: String, CaseIterable {
    case easy = "Easy"
    case intermediate = "Intermediate"
    case difficult = "Difficult"
    case chef = "Like a Chef!"
}

enum RecipeDiet: String, CaseIterable {
    case vegan = "Vegan"
    case vegetarian = "Vegetarian"
    case dairyFree = "Dairy free"
    case glutenFree = "Gluten free"
    case porkLess = "Porkless"
    case fishLess = "Fishless"
    case allDiets = "All diets"
}

enum RecipeSeason: String, CaseIterable {
    case spring = "Spring"
    case summer = "Summer"
    case autumn = "Autumn"
    case winter = "Winter"
    case allSeasons = "All seasons"
}

struct Ingredient: Hashable {
    let ingredientImage: String
    let ingredientName: String
    
    static let IngredientExample: [Ingredient] = [Ingredient(ingredientImage: "chocolate", ingredientName: "Plain chocolate")]
}

struct Step: Hashable {
    let title: String
    let description: String
    
    static let stepExample: [Step] = [Step(title: "Step 1", description: "Describes the whole process.")]
}
