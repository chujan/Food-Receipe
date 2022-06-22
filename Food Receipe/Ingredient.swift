//
//  Ingredient.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 21/06/2022.
//

import Foundation
struct Ingredient: Hashable, Codable {
    var quantity: String
    var name: String
    var emoji: String
}
