//
//  RecipeDetailView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 22/06/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    @Environment(\.dismiss) var dismiss
    @State private var stepsShowing = false
    @ViewBuilder
    
    private var backButton: some View {
        HStack {
            Button { dismiss()} label: {
                Image(systemName: "chevron.backward")
                    .font(.title3)
                    .foregroundColor(.primary)
                    .padding()
                    .background(.thinMaterial, in: Circle())
            }
            Spacer()
        }
        .padding(.top, 30)
        .padding(.leading, 20)
    }
   
    var body: some View {
        VStack {
            ZStack{
                BackgroundImage(image: Image(recipe.imageName))
                VStack {
                    backButton
                    Spacer()
                    RecipesByView()
                }
            }
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
            .clipped()
            List {
                VStack(alignment: .leading, spacing: 10) {
                    DescHeaderView(stepsShowings: $stepsShowing, recipe: recipe)
                    
                    if stepsShowing {
                        StepsView(recipe: recipe)
                    } else {
                        IngredientView(recipe: recipe)
                    }
                }
                .padding(.top)
            }.listStyle(.plain)
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe.sampleData[1])
    }
}
