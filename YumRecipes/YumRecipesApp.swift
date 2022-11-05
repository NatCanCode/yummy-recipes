//
//  YumRecipesApp.swift
//  YumRecipes
//
//  Created by N N on 28/10/2022.
//

import SwiftUI

@main
struct YumRecipesApp: App {
    
    @StateObject public var favoriteVM = FavoriteViewModel()
//    @StateObject public var addVM = AddRecipeViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoriteVM)
//                .environmentObject(addVM)
        }
    }
}
