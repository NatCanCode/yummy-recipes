//
//  EmptyAddedRecipeView.swift
//  YumRecipes
//
//  Created by N N on 06/11/2022.
//

import SwiftUI

struct EmptyAddedRecipeView: View {
    var body: some View {
        VStack {
            Image(systemName: "cross")
                .font(.largeTitle)
            Text("No added recipe yet!")
                .font(.title2)
                .padding(20)
        }
        .foregroundColor(.secondary)
    }
}

struct EmptyAddedRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyAddedRecipeView()
    }
}
