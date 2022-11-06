//
//  AddedRecipeListView.swift
//  YumRecipes
//
//  Created by N N on 06/11/2022.
//

import SwiftUI

struct AddedRecipeListView: View {
    
    @EnvironmentObject public var addedRecipeVM: AddRecipeViewModel
    @State private var showSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                if addedRecipeVM.recipes.isEmpty {
                    EmptyView(information: "None of your own recipes to see here yet!")
                    Button(action: {
                        showSheet.toggle()
                    }, label: {
                        Text("Add your own recipe!")
                            .font(.title)
                    })
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                    .tint(Color("darkGreen"))
                    .sheet(isPresented: $showSheet) {
                        RecipeFormView()
                    }
                } else {
                    List {
                        ForEach(addedRecipeVM.recipes) { recipe in
                            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                                ListRowCellView(formImage: recipe.formImage, recipeName: recipe.name, recipeDescription: recipe.description)
                            }
                        }
                        .onDelete(perform: addedRecipeVM.deleteAddedRecipe)
                        .onMove(perform: addedRecipeVM.moveAddedRecipe)
                    }
                }
            }
            .navigationTitle("My recipes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showSheet.toggle()
                    }, label: {
                        Label("Add your own recipe!", systemImage: "plus.circle.fill")
                            .font(.title)
                    })
                    .sheet(isPresented: $showSheet) {
                        RecipeFormView()
                    }
                    .tint(Color("darkGreen"))
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    if !addedRecipeVM.recipes.isEmpty {
                        EditButton()
                            .foregroundColor(Color("darkGreen"))
                    }
                }
            }
        }
    }
}
    
struct AddedRecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        AddedRecipeListView()
    }
}
