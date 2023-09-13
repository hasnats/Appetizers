//
//  Appetizer.swift
//  Appetizers
//
//  Created by Hasna T S on 12/09/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let carbs: Int
    let protein: Int
    let calories: Int
    let imageURL: String
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test appetizer",
                                           description: "des",
                                           price: 80.99,
                                           carbs: 0,
                                           protein: 5,
                                           calories: 67,
                                           imageURL: "")
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
