//
//  Title.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 05/12/2024.
//

import SwiftUI

struct Title: View {
    var body: some View {
        VStack{
            Text("M&S")
                .foregroundStyle(.black)
                .font(.title)
            Text("-Food-")
                .foregroundStyle(.black)
                .font(.subheadline)
                .kerning(2)
        }
    }
}

#Preview {
    Title()
}
