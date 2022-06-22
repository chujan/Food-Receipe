//
//  RecipesByView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 22/06/2022.
//

import SwiftUI

struct RecipesByView: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Recipe by:")
                    .foregroundColor(.secondary)
                    .font(.body)
                    .fontWeight(.light)
                Text("Food Recipe")
                    .font(.body)
                    .bold()
                    .padding(.leading, 10)
            }
            .frame(maxWidth: UIScreen.main.bounds.width * 0.8, alignment: .leading)
        }
        .padding()
        .background(.thinMaterial,in: RoundedRectangle(cornerRadius: 10))
    }
}

struct RecipesByView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesByView()
    }
}
