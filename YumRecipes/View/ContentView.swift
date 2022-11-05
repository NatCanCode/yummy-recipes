//
//  ContentView.swift
//  YumRecipes
//
//  Created by N N on 28/10/2022.
//

import SwiftUI
// Ideal for TabView
struct ContentView: View {
    var body: some View {
        TabView {
            RecipeListView()
                .tabItem {
                    Label("Recipes", systemImage: "fork.knife")
                }
//            RecipeFormView()
//                .tabItem {
//                    Label("My recipes", systemImage: "book.closed")
//                }
            FavoriteRecipeListView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
//                .tabItem {
//                    Label("Recipes", systemImage: "book")
//                }
        }
//        .foregroundColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
