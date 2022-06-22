//
//  RecipeListView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 21/06/2022.
//

import SwiftUI

struct RecipeListView: View {
    @State private var searchText = ""
    @State private var allRecipes = [Recipe]()
    
    var recipes: [Recipe] {
        if searchText.isEmpty {
            return allRecipes
        }
        return allRecipes.filter({
            $0.name.lowercased().contains(searchText.lowercased())})
    }
    
    var body: some View {
        NavigationView {
            VStack {
                DiscoverView(searchText: $searchText)
                ScrollView(showsIndicators: false) {
                    LazyVStack(alignment: .leading, spacing: 10) {
                        MealView()
                        ForEach(recipes, id: \.self) { recipes in
                            NavigationLink(destination: RecipeDetailView(recipe: recipes)) {
                                RecipeTileView(recipe: recipes)
                            }
                            .buttonStyle(.plain)
                            
                        }
                        
                        
                    }
                }
            }
            .animation(.easeOut, value: searchText)
            .padding(.horizontal)
            .navigationTitle("Food Recipes")
        }
            .onAppear() {
        allRecipes = JSONFileManager.load("recipes.json")
                print(allRecipes)
            }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
