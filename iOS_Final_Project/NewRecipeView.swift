//
//  NewRecipeView.swift
//  iOS_Final_Project
//
//  Created by Jasmine Muman on 2022-08-10.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView{
            Text("My New Recipe")
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
