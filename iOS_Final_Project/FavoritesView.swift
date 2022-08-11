//
//  FavoritesView.swift
//  iOS_Final_Project
//
//  Created by Jasmine Muman on 2022-08-10.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView{
            Text("Favorites")
                .navigationTitle("My favorites")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
