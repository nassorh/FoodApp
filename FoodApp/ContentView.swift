//
//  ContentView.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 04/12/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView{
            VStack {
                Title()
                Carousel(catergories: viewModel.categories)
            }
        }
    }
}

#Preview {
    ContentView()
}
