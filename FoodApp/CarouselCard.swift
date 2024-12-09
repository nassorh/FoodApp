//
//  CarouselCard.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 05/12/2024.
//

import SwiftUI

struct CarouselCard: View {
    var catergory: Category
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(catergory.image_uri)
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                //Add this for better visibilty
                .overlay(
                    LinearGradient(
                        colors: [Color.black.opacity(0.6), Color.clear],
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
            
            VStack(alignment: .leading){
                Text(catergory.text)
                    .foregroundColor(.white)
                    .font(.headline)
                NavigationLink(destination: CategoryListView(catergoryName: catergory.name ,items: catergory.items)) {
                    Text(catergory.button_text)
                        .padding(8)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .font(.callout)
                }
            }
        }
        .containerRelativeFrame(.horizontal)
    }
}

#Preview {
    CarouselCard(catergory: Category.example[0])
}
