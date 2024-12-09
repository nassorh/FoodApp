//
//  Model.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 05/12/2024.
//

import Foundation

struct Item: Hashable, Decodable {
    var image_uri: String
    var title: String
    var price: Double
}


struct Category: Decodable {
    var name: String
    var text: String
    var button_text: String
    var image_uri: String
    var items: [Item]
}
