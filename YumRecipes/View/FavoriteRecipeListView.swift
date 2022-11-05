//
//  FavoriteRecipeListView.swift
//  YumRecipes
//
//  Created by N N on 01/11/2022.
//

import SwiftUI

struct FavoriteRecipeListView: View {
    
    @EnvironmentObject public var favoritesVM: FavoriteViewModel
    
    var body: some View {
        NavigationView {
            
            if favoritesVM.favorites.isEmpty {
                EmptyView()
            } else {
                List {
                    ForEach(favoritesVM.favorites) { fave in
                        NavigationLink(destination: RecipeDetailView(recipe: fave)) {
                            ListRowCellView(recipeImage: fave.image, formImage: nil, recipeName: fave.name, recipeDescription: fave.description)
                        }
                    }
                    .onDelete(perform: favoritesVM.removefavorite)
                    .onMove(perform: favoritesVM.moveRecipe)
                }
                .background(Color("paleGreen"))
                .scrollContentBackground(.hidden)
                .navigationTitle("Favorites")
            }
//            .ignoresSafeArea()
        }
    }
}

struct FavoriteRecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteRecipeListView()
            .environmentObject(FavoriteViewModel())
    }
}
