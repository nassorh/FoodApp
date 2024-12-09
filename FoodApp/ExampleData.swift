//
//  ExampleData.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 05/12/2024.
//

import Foundation

extension Category {
    static let example: [Category] = [
        Category(
            name: "Main Dishes",
            text: "Succulent Winter Feast Roast",
            button_text: "Savor the Feast",
            image_uri: "main_course",
            items: [
                Item(image_uri: "fork.knife", title: "Roast Beef with Garlic Herb Crust", price: 25.99),
                Item(image_uri: "leaf", title: "Honey-Glazed Ham", price: 20.50),
                Item(image_uri: "flame", title: "Slow-Cooked Lamb Shank", price: 30.00),
                Item(image_uri: "fish", title: "Grilled Salmon with Lemon Butter", price: 22.75)
            ]
        ),
        Category(
            name: "Turkey",
            text: "Golden Crown Turkey",
            button_text: "Carve the Moment",
            image_uri: "turkey",
            items: [
                Item(image_uri: "bird", title: "Stuffed Roast Turkey", price: 45.00),
                Item(image_uri: "smoke.fill", title: "Smoked Turkey Breast", price: 35.50),
                Item(image_uri: "drop.fill", title: "Turkey Crown with Cranberry Glaze", price: 40.00),
                Item(image_uri: "hare.fill", title: "Herb-Butter Turkey Legs", price: 18.99)
            ]
        ),
        Category(
            name: "Side Dishes",
            text: "Irresistible Trimmings Medley",
            button_text: "Perfect the Plate",
            image_uri: "side_dishes",
            items: [
                Item(image_uri: "square.stack.3d.down.right.fill", title: "Garlic Mashed Potatoes", price: 8.99),
                Item(image_uri: "carrot.fill", title: "Honey-Roasted Carrots", price: 6.50),
                Item(image_uri: "leaf.circle.fill", title: "Crispy Brussels Sprouts with Bacon", price: 10.75),
                Item(image_uri: "crown.fill", title: "Yorkshire Puddings", price: 7.25)
            ]
        )
    ]
}

extension Item {
    static let example: (categoryName: String, items: [Item]) = (
        categoryName: "Main Dishes",
        items: [
            Item(image_uri: "fork.knife", title: "Roast Beef with Garlic Herb Crust", price: 25.99),
            Item(image_uri: "leaf", title: "Honey-Glazed Ham", price: 20.50),
            Item(image_uri: "flame", title: "Slow-Cooked Lamb Shank", price: 30.00),
            Item(image_uri: "fish", title: "Grilled Salmon with Lemon Butter", price: 22.75)
        ]
    )
}

