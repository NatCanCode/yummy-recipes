//
//  RecipeFormFollowView.swift
//  YumRecipes
//
//  Created by N N on 07/11/2022.
//

//import SwiftUI
//
//struct RecipeFormFollowView: View {
//    
//    @Environment(\.presentationMode) var presentationMode
//    @ObservedObject var recipeVM: AddRecipeViewModel
//    @FocusState private var isKeyboardFocused: Bool
//    @Binding var textFieldName: String
//    @Binding var textFieldPrepTime: String
//    @Binding var textFieldCookingTime: String
//    @Binding var textFieldRestTime: String
//    @Binding var textFieldIngredient: String
//    @State var ingredients = [Ingredient]()
//    @Binding var textFieldDescription: String
//    @Binding var textFieldStep: String
//    @Binding var steps: [Step]
//    var isButtonDisabled: Bool {
//        textFieldName.count > 3
//    }
//    
//    var body: some View {
//        
//        NavigationView {
//            
//            Section {
//                TextField("Prep time", text: $textFieldPrepTime)
//                    .focused($isKeyboardFocused)
//                TextField("Cooking time", text: $textFieldCookingTime)
//                    .focused($isKeyboardFocused)
//                TextField("Rest time", text: $textFieldRestTime)
//                    .focused($isKeyboardFocused)
//                
//                
//                TextField("Add", text: $textFieldIngredient)
//                    .focused($isKeyboardFocused)
//                Button(action: {
//                    if textFieldIngredient.count > 2 {
//                        ingredients.insert(textFieldIngredient, at: 0)
//                    }
//                    textFieldIngredient = ""
//                }, label: {
//                    Label(title: "Add ingredient", systemImageName: "plus.circle.fill")
//                        .foregroundColor(.white)
//                })
//                .buttonStyle(.borderedProminent)
//                .tint(textFieldIngredient.count > 2 ? Color("darkGreen") : .gray)
//                
//                if !ingredients.isEmpty {
//                    ForEach(ingredients, id: \.self) { ingredient in
//                        Text(ingredient)
//                    }
//                }
//                
//                TextEditor(text: $textFieldName)
//                    .focused($isKeyboardFocused)
//            }
//        }
//        .navigationTitle("Add your recipe")
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                Button(action: {
//                    recipeVM.addRecipe(image: nil, formImage: recipeVM.selectedImage,
//                                       //                                               name: textFieldName,
//                                       //                                               category: categoryPicker,
//                                       //                                               cost: costPicker,
//                                       //                                               level: levelPicker,
//                                       //                                               diet: dietPicker,
//                                       //                                               season: seasonPicker,
//                                       prepTime: textFieldPrepTime,
//                                       cookingTime: textFieldCookingTime,
//                                       restTime: textFieldRestTime,
//                                       ingredients: ingredients,
//                                       description: textFieldDescription,
//                                       step: steps)
//                    presentationMode.wrappedValue.dismiss()
//                }, label: {
//                    Text("Submit")
//                        .foregroundColor(.white)
//                })
//                .disabled(!isButtonDisabled)
//                .buttonStyle(.borderedProminent)
//                .foregroundColor(Color("darkGreen"))
//            }
//            
//            ToolbarItemGroup(placement: .keyboard) {
//                Spacer()
//                Button(action: {
//                    isKeyboardFocused.toggle()
//                }, label: {
//                    Text("Done")
//                        .foregroundColor(Color("darkGreen"))
//                })
//            }
//        }
//        
//    }
//}

//struct RecipeFormFollowView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeFormFollowView(addRecipeVM: AddRecipeViewModel())
//    }
//}

