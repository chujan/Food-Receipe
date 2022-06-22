//
//  ContentView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showOnboarding = true
    
    var body: some View {
        if showOnboarding {
            AppOnboardingView(showOnboarding: $showOnboarding)
        } else {
            RecipeListView()
        }
    
        
        
}
  
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
