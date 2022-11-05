//
//  RecipeFormView.swift
//  YumRecipes
//
//  Created by N N on 03/11/2022.
//

//import SwiftUI
//import PhotosUI
//
//struct RecipeFormView: View {
//
//    @EnvironmentObject public var recipeVM: AddRecipeViewModel
//    @State private var selectedItem: PhotosPickerItem?
//
//    var body: some View {
//        Form {
//            if let selectedImage = recipeVM.selectedImage {
//                .resizable()
//                .frame(width: 100, height: 100)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//            }
//
//            PhotosPicker(selection: $selectedItem) {
//                Label("Select image", systemImage: "photo.artframe")
//            }
//            .onChange(of: selectedItem) { newValue in
//                Task {
//                    if let imageData = try? await newValue?.loadTransferable(type: Data.self), let image = UIImage(data: imageData) {
//                        recipeVM.selectedImage = Image(uiImage: image)
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct RecipeFormView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeFormView()
//            .environmentObject(AddRecipeViewModel())
//    }
//}
