//
//  EmptyView.swift
//  YumRecipes
//
//  Created by N N on 01/11/2022.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        VStack {
            Image(systemName: "xmark.seal")
                .font(.largeTitle)
            Text("No favorite recipe yet!")
                .font(.title2)
                .padding(20)
        }
        .foregroundColor(.secondary)
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
