//
//  EmptyView.swift
//  YumRecipes
//
//  Created by N N on 01/11/2022.
//

import SwiftUI

struct EmptyView: View {
    
    var information: String = "Nothing to see here yet!"
    
    var body: some View {
        VStack {
            Image(systemName: "cross")
                .font(.largeTitle)
            Text(information)
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
