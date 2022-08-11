//
//  RecipesViewModel.swift
//  iOS_Final_Project
//
//  Created by Jasmine Muman on 2022-08-11.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
       
}
