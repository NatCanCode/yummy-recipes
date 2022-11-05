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
    let season: RecipeSeason
    let prepTime: Int
    let cookingTime: Int
    let restTime: Int
    let ingredients: [String]
    let description: String
    let step: [Step]
}

struct Step: Hashable {
    let title: String
    let description: String
    
    static let example: [Step] = [Step(title: "Step 1", description: "Describes the whole process.")]
}

enum RecipeCategory: String, CaseIterable {
    case starter = "Starter"
    case main = "Main"
    case dessert = "Dessert"
}

enum RecipeCost: String {
    case cheap = "Cheap"
    case average = "Average"
    case expensive = "Expensive"
}

enum RecipeLevel: String {
    case easy = "Easy"
    case intermediate = "Intermediate"
    case difficult = "Difficult"
}

enum RecipeSeason: String {
    case spring = "Spring"
    case summer = "Summer"
    case autumn = "Autumn"
    case winter = "Winter"
}