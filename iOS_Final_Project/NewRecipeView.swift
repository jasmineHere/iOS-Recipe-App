//
//  NewRecipeView.swift
//  iOS_Final_Project
//
//  Created by Jasmine Muman on 2022-08-10.
//

import SwiftUI

struct NewRecipeView: View {
    
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView{
            Button("Add a new recipe"){
                showAddRecipe = true
            }
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe){
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
