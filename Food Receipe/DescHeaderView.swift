//
//  DescHeaderView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 22/06/2022.
//

import SwiftUI

struct DescHeaderView: View {
    
    @Binding var stepsShowings: Bool
    var recipe: Recipe
    var body: some View {
        VStack {
            VStack {
                Text(recipe.name)
                    .font(.title2)
                Text("\(recipe.cookTime) | \(recipe.servings)")
                    .foregroundColor(.secondary)
                Picker("", selection: $stepsShowings) {
                    Text("Ingredients")
                        .tag(false)
                    Text("Steps")
                        .tag(true)
                }.labelsHidden()
                    .pickerStyle(.segmented)
            }
        }
    }
}

struct DescHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DescHeaderView(stepsShowings: .constant(false), recipe: Recipe.sampleData[0])
    }
}
