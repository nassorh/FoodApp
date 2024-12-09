//
//  ContentViewModel.swift
//  FoodApp
//
//  Created by Nassor, Hamad on 05/12/2024.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var categories: [Category] = []
    
    //Comment: Loses control over when this fetch should happen. This fetch should happen somewhere else? (Speak to Dan, look at recipes section in the app)
    init() {
        fetchCategories()
    }
    
    private func fetchCategories() {
        guard let url = Bundle.main.url(forResource: "categories", withExtension: "json") else {
            print("JSON file not found")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            self.categories = try JSONDecoder().decode([Category].self, from: data)
        } catch {
            print("Error Decoding JSON: \(error)")
        }
    }
}
