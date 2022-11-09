////
////  FormTestView.swift
////  YumRecipes
////
////  Created by N N on 07/11/2022.
////
//
//import SwiftUI
//import PhotosUI
//
//struct FormTestView: View {
//    @EnvironmentObject public var recipeVM: AddRecipeViewModel
//    @State private var selectedItem: PhotosPickerItem?
//    
//    @State private var textFieldName = ""
//    @State private var timeToCook = ""
//    
//    @State private var categoryPicker: RecipeCategory = .dessert
//    @State private var costPicker: RecipeCost = .cheap
//    @State private var levelPicker: RecipeLevel = .easy
//    @State private var dietPicker: RecipeDiet = .allDiets
//    @State private var seasonPicker: RecipeSeason = .allSeasons
//    
//    @State private var textFieldPrepTime = ""
//    @State private var textFieldCookingTime = ""
//    @State private var textFieldRestTime = ""
//    @State private var textFieldIngredient = ""
//    @State private var ingredients = [Ingredient]()
//    @State private var textFieldDescription = ""
//    @State private var textFieldStep = ""
//    @State private var steps = [Step]()
//    
//    @Environment(\.presentationMode) var presentationMode
//    @FocusState private var isKeyboardFocused: Bool
//    
//    var isButtonDisbaled: Bool {
//        textFieldName.count > 3
//    }
//    
//    var body: some View {
//        NavigationView {
//            
//            Form {
//                Section {
//                    TextField("Tajine Zeitoune", text: $textFieldName)
//                        .focused($isKeyboardFocused)
//                    TextField("45min", text: $timeToCook)
//                        .focused($isKeyboardFocused)
//                    
//                    Picker("Type de recette", selection: $categoryPicker) {
//                        ForEach(RecipeCategory.allCases, id: \.self) { type in
//                            Text(type.rawValue)
//                        }
//                    }
//                    
//                    Picker("Prix moyen", selection:  $costPicker) {
//                        ForEach(RecipeCost.allCases, id: \.self) { price in
//                            Text(price.rawValue)
//                        }
//                    }
//                    
//                    Picker("Difficulté", selection: $levelPicker) {
//                        ForEach(RecipeLevel.allCases, id: \.self) { difficulty in
//                            Text(difficulty.rawValue)
//                        }
//                    }
//                }
//                Section {
//                    TextField("4 cuisses de poulet", text: $textFieldStep)
//                        .focused($isKeyboardFocused)
//                    
//                    Button(action: {
//                        if ingredients.count > 2 {
//                            ingredients.insert(Ingredient(ingredientImage: "plus", ingredientName: textFieldIngredient), at: 0)
//                        }
//                        textFieldIngredient = ""
//                    }, label: {
//                        Label( "Ingrédient", systemImage: "plus.circle.fill")
//                            .foregroundColor(.white)
//                    })
//                    .buttonStyle(.borderedProminent)
//                    .tint(ingredients.count > 2 ? .blue : .gray)
//                    
//                    if !ingredients.isEmpty {
//                        
//                        ForEach(ingredients, id: \.self) { ingredient in
//                            Text(ingredient.ingredientName)
//                            Image(ingredient.ingredientImage)
//                        }
//                        
//                    }
//                }
//                
//                Section(header: Text("Description")) {
//                    TextEditor(text: $textFieldDescription)
//                        .focused($isKeyboardFocused)
//                    
//                }
//                Section {
//                    PhotosPicker(selection: $selectedItem) {
//                        Label("Select image", systemImage: "photo.artframe")
//                    }
//                    .onChange(of: selectedItem) { newValue in
//                        Task {
//                            if let imageData = try? await newValue?.loadTransferable(type: Data.self), let image = UIImage(data: imageData) {
//                                recipeVM.selectedImage = Image(uiImage: image)
//                            }
//                        }
//                    }
//                    if let selectedImage = recipeVM.selectedImage {
//                        selectedImage
//                            .resizable()
//                            .scaledToFill()
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .cornerRadius(10)
//                    }
//                }
//                
//            }
//            .navigationTitle("Créer une recette")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(
//                        action: {
//                            
//                            recipeVM.addRecipe(
//                                image: nil,
//                                formImage: recipeVM.selectedImage,
//                                name: textFieldName,
//                                category: categoryPicker,
//                                cost: costPicker,
//                                level: levelPicker,
//                                diet: dietPicker,
//                                season: seasonPicker,
//                                prepTime: textFieldPrepTime,
//                                cookingTime: textFieldCookingTime,
//                                restTime: textFieldRestTime,
//                                ingredients: ingredients,
//                                description: textFieldDescription,
//                                step: steps
//                            )
//                            presentationMode.wrappedValue.dismiss()
//                        }, label: {
//                            Text("Submit")
//                                .foregroundColor(.white)
//                        })
//                    .disabled(!isKeyboardFocused)
//                    .buttonStyle(.borderedProminent)
//                }
//                
//                ToolbarItemGroup(placement: .keyboard) {
//                    Spacer()
//                    
//                    Button(action: {
//                        isKeyboardFocused.toggle()
//                    }, label: {
//                        Text("OK")
//                            .foregroundColor(.green)
//                    })
//                }
//            }
//        }
//    }
//}
//
//struct FormTestView_Previews: PreviewProvider {
//    static var previews: some View {
//        FormTestView()
//    }
//}
