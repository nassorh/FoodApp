//
//  CarouselView.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 05/12/2024.
//

import SwiftUI

struct Carousel: View {
    var catergories: [Category]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 25){
                ForEach(0..<catergories.count, id: \.self){ index in
                    let catergory = catergories[index]
                    ZStack(alignment: .bottomLeading) {
                        Image(catergory.image_uri)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            //Comments: Add this for better visibilty
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
                    .frame(width: UIScreen.main.bounds.width)
                    
                }
            }
        }
    }
}

#Preview {
    Carousel(catergories: Category.example)
}
