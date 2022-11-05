//
//  RecipeDetailView.swift
//  YumRecipes
//
//  Created by N N on 30/10/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    //    Must give the detail view a sample recipe > RecipeModel extension created in RecipeData file
    let recipe: RecipeModel
    @EnvironmentObject public var favoriteVM: FavoriteViewModel
    @State private var value = 1
    @State var circleSize: Float = 20.0
    let step = 1
    let range = 1...9
    
    var body: some View {
        List {
            VStack {
                if let recipe = recipe.image {
                    Image(recipe)
                        .resizable()
                        .scaledToFit()
                    //                    .frame(maxWidth: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.secondary)
                            .frame(maxHeight: 350)
                        Text("Yum Recipes")
                            .font(.title3)
                            .foregroundStyle(.secondary)
                    }
                }
                
                HStack {
                    Text(recipe.name)
                        .font(.title.bold())
                    //  Spacer()
                    //                    Text(recipe.category.rawValue)
                    //                        .foregroundColor(.secondary)
                }
                .padding()
                
                HStack {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                            .foregroundColor(.secondary)
                    }
                }
                
            }
            //            .navigationBarHidden(true)
            
            VStack(alignment: .center){
                HStack(alignment: .center) {
                    IconsExtractedView(systemName: "clock.arrow.circlepath", indicator: String(recipe.prepTime) + " min")
                    IconsExtractedView(systemName: "cooktop", indicator: String(recipe.cookingTime) + " min")
                    IconsExtractedView(systemName: "stopwatch", indicator: String(recipe.restTime) + " min")
                }
                HStack(alignment: .center) {
                    IconsExtractedView(systemName: "star", indicator: recipe.level.rawValue)
                    IconsExtractedView(systemName: "leaf", indicator: recipe.season.rawValue)
                    IconsExtractedView(systemName: "eurosign", indicator: recipe.cost.rawValue)
                }
            }
            .padding(7)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(.purple)
            .fontWeight(.bold)
            
            VStack {
                HStack {
                    Spacer()
                    Stepper("Nombre de personnes", value: $value, in: range, step: step)
                        .frame(width: 100, height: 50)
                    Spacer()
                }
                Text("Pour \(value) personnes")
//                Circle()
//                    .frame(width: CGFloat(circleSize), height: CGFloat(circleSize))
//                    .foregroundColor(.purple)
//                    .animation(.easeIn)
                Spacer()
            }
            .padding(.top)
            .foregroundColor(.purple)
            .fontWeight(.bold)
            
            
            //            if !recipe.description.isEmpty {
            //                VStack(alignment: .leading, spacing: 10) {
            //                    Text(recipe.description)
            //                        .foregroundColor(.secondary)
            //
            //                }
            //            }
            //            Spacer()
            
            if !recipe.ingredients.isEmpty {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Ingredients")
                            .font(.title2.bold())
                    }
                    VStack(alignment: .leading) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            Text(ingredient)
                        }
                    }
                }
                .padding()
            }
            
            if !recipe.step.isEmpty {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Method")
                            .font(.title2.bold())
                    }
                    VStack(alignment: .leading, spacing: 1) {
                        ForEach(recipe.step, id: \.self) { step in
                            VStack(alignment: .leading, spacing: 6) {
                                Text(step.title)
                                    .font(.title3.bold())
                                    
                                Text(step.description)
                                    .padding(.bottom)
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .listStyle(.plain)
        
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    favoriteVM.deleteOrRemoveFavorite(recipe: recipe)
                }, label: {
                    Label("Add to favorites", systemImage: "heart")
                })
                .foregroundColor(.purple)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        //        .ignoresSafeArea()
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeDetailView(recipe: .recipeSample)
                .environmentObject(FavoriteViewModel())
        }
    }
}

struct IconsExtractedView: View {
    var systemName: String
    var indicator: String
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: systemName)
            Text(indicator)
        }
        .padding(10)
    }
}
