//
//  DiscoverView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 20/06/2022.
//

import SwiftUI

struct DiscoverView: View {
    
    @Binding var searchText: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search Recipes", text: $searchText)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 2))
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView(searchText: .constant(""))
    }
}
