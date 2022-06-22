//
//  MealView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 20/06/2022.
//

import SwiftUI

struct MealView: View {
    var body: some View {
        HStack {
            Text("🥗")
                .font(.system(size: 80))
            VStack(alignment: .leading, spacing: 10) {
                Text("You have 20 recipes to try.")
                    .font(.body)
                    .foregroundColor(.black)
                Button("See recipes") {}
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("lightGreen"), in:
        RoundedRectangle(cornerRadius: 20))
    }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
