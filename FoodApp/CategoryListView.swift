//
//  CategoryListView.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 05/12/2024.
//

import SwiftUI

struct CategoryListView: View {
    var catergoryName: String
    var items: [Item]
    
    var body: some View {
        List(items, id: \.self) { item in
            HStack{
                Image(systemName: item.image_uri)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                
                VStack(alignment: .leading){
                    Text(item.title)
                        .font(.headline)
                    Text(String(format: "£%.2f",item.price))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationTitle(catergoryName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CategoryListView(
        catergoryName: Item.example.categoryName,
        items: Item.example.items
    )
}
