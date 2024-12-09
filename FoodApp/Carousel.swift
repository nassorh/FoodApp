//
//  Carousel.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 05/12/2024.
//

import SwiftUI

struct Carousel: View {
    var catergories: [Category]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 0){
                ForEach(0..<catergories.count, id: \.self){ index in
                    let catergory = catergories[index]
                    CarouselCard(catergory: catergory)
                }
            }
        }
        .scrollTargetBehavior(.paging)
    }
}


#Preview {
    Carousel(catergories: Category.example)
}
