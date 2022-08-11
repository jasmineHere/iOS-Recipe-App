//
//  SettingsView.swift
//  iOS_Final_Project
//
//  Created by Jasmine Muman on 2022-08-10.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        NavigationView{
            Text("This is settings screen")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
