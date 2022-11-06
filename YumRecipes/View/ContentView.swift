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
        ZStack {
            Color("paleGreen")
            TabView {
                RecipeListView()
                    .tabItem {
                        Label("Recipes", systemImage: "fork.knife")
                    }
                AddedRecipeListView()
                    .tabItem {
                        Label("My recipes", systemImage: "plus")
                    }
                FavoriteRecipeListView()
                    .tabItem {
                        Label("Favorites", systemImage: "heart")
                    }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
