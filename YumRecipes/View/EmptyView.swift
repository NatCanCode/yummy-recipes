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
        ZStack {
            Color("paleGreen")
            VStack {
//                Image(systemName: "multiply")
                Text("🫣")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(20)
                Text(information)
                    .font(.title3)
                    .padding(20)
            }
            .foregroundColor(.secondary)
        }
        .ignoresSafeArea()
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
