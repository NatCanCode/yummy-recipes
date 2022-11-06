//
//  RecipeFormView.swift
//  YumRecipes
//
//  Created by N N on 03/11/2022.
//

import SwiftUI
import PhotosUI

struct RecipeFormView: View {
    
    @EnvironmentObject public var recipeVM: AddRecipeViewModel
    @State private var selectedItem: PhotosPickerItem?
    @State private var textFieldName = ""
    @State private var categoryPicker: RecipeCategory = .dessert
    @State private var costPicker: RecipeCost = .cheap
    @State private var levelPicker: RecipeLevel = .easy
    @State private var dietPicker: RecipeDiet = .allDiets
    @State private var seasonPicker: RecipeSeason = .allSeasons
    @State private var textFieldPrepTime = ""
    @State private var textFieldCookingTime = ""
    @State private var textFieldRestTime = ""
    @State private var textFieldIngredient = ""
    @State private var ingredients = [String]()
    @State private var textFieldDescription = ""
    @State private var textFieldStep = ""
    @State private var steps = [String]()
    
//    Permet de baisser la vue
    @Environment(\.presentationMode) var presentationMode
    
//    afficher/retirer clavier
    @FocusState private var isKeyboardFocused: Bool
    
    var isButtonDisabled: Bool {
        textFieldName.count > 3
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        if let selectedImage = recipeVM.selectedImage {
                            selectedImage
                                .resizable()
                                .scaledToFill()
//                                .frame(width: 100, height: 100)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        PhotosPicker(selection: $selectedItem) {
                            Label("Select image", systemImage: "photo.artframe")
                        }
                        .onChange(of: selectedItem) { newValue in
                            Task {
                                if let imageData = try? await newValue?.loadTransferable(type: Data.self), let image = UIImage(data: imageData) {
                                    recipeVM.selectedImage = Image(uiImage: image)
                                }
                            }
                        }
                    }
                    
                    Section {
                        TextField("Add your recipe title", text: $textFieldName)
                            .focused($isKeyboardFocused)
                        
                        Picker("Select recipe category", $categoryPicker) {
                            ForEach(RecipeCategory.allCases, id: \.self) {
                                category in Text(category.rawValue)
                            }
                        }
                        .pickerStyle(.automatic)
                        
                        Picker("Select recipe cost", $costPicker) {
                            ForEach(RecipeCost.allCases, id: \.self) {
                                cost in Text(cost.rawValue)
                            }
                        }
                        .pickerStyle(.automatic)
                        
                        Picker("Select recipe level", $levelPicker) {
                            ForEach(RecipeLevel.allCases, id: \.self) {
                                level in Text(level.rawValue)
                            }
                        }
                        .pickerStyle(.automatic)
                        
                        Picker("Select recipe diet", $dietPicker) {
                            ForEach(RecipeDiet.allCases, id: \.self) {
                                diet in Text(diet.rawValue)
                            }
                        }
                        .pickerStyle(.automatic)
                        
                        Picker("Select recipe season", $seasonPicker) {
                            ForEach(RecipeSeason.allCases, id: \.self) {
                                season in Text(season.rawValue)
                            }
                        }
                        .pickerStyle(.automatic)
                        
                        TextField("Prep time", text: $textFieldPrepTime)
                            .focused($isKeyboardFocused)
                        TextField("Cooking time", text: $textFieldCookingTime)
                            .focused($isKeyboardFocused)
                        TextField("Rest time", text: $textFieldRestTime)
                            .focused($isKeyboardFocused)
                    }
                    
                    Section {
                        TextField("Add", text: $textFieldIngredient)
                            .focused($isKeyboardFocused)
                        Button(action: {
                            if textFieldIngredient.count > 2 {
                                ingredients.insert(textFieldIngredient, at: 0)
                            }
                            textFieldIngredient = ""
                        }, label: {
                            Label(title: "Add ingredient", systemImageName: "plus.circle.fill")
                                .foregroundColor(.white)
                        })
                        .buttonStyle(.borderedProminent)
                        .tint(textFieldIngredient.count > 2 ? Color("darkGreen") : .gray)
                        
                        if !ingredients.isEmpty {
                            ForEach(ingredients, id: \.self) { ingredient in
                                Text(ingredient)
                            }
                        }
                    }
                    
                    Section(header: Text("Description")) {
                        TextEditor(text: $textFieldName)
                            .focused($isKeyboardFocused)
                    }
                }
                .navigationTitle("Add your recipe")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            recipeVM.addRecipe(image: nil, formImage: recipeVM.selectedImage, name: textFieldName, category: categoryPicker, cost: costPicker, level: levelPicker, diet: dietPicker, season: seasonPicker, prepTime: textFieldPrepTime, cookingTime: textFieldCookingTime, restTime: textFieldRestTime, ingredients: [ingredients], description: textFieldDescription, step: [step])
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Submit")
                                .foregroundColor(.white)
                        })
                        .disabled(!isButtonDisabled)
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(Color("darkGreen"))
                    }
                    
                    ToolbarItem(placement: .keyboard) {
                        Spacer()
                        Button(action: {
                            isKeyboardFocused.toggle()
                        }, label: {
                            Text("Done")
                                .foregroundColor(Color("darkGreen"))
                        })
                    }
                }
            }
        }
    }
}

struct RecipeFormView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFormView()
            .environmentObject(AddRecipeViewModel())
    }
}
