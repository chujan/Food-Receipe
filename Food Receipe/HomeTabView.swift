//
//  HomeTabView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 20/06/2022.
//

import SwiftUI

struct HomeTabView: View {
     
    enum Tab: Int {
        case meal
        case discover
    }
    @State private var selectedTab = Tab.meal
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
