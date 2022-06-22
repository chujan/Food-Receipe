//
//  IngredientView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 22/06/2022.
//

import SwiftUI

struct IngredientView: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                Text("Ingredients")
                    .font(.title2)
                    .padding(.top, 40)
                
                Spacer()
                Text("\(recipe.ingredients.count) items")
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
            ForEach(recipe.ingredients, id: \.self) {
                Ingredient in
                HStack(alignment: .center) {
                    Text(Ingredient.emoji)
                        .padding(10)
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    Text(Ingredient.name)
                    Spacer()
                    Text(Ingredient.quantity)
                        .multilineTextAlignment(.trailing)
                }
                .padding(.vertical)
                
            }
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView(recipe: Recipe.sampleData[1])
    }
}
