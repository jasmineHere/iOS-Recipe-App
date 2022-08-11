//
//  iOS_Final_ProjectApp.swift
//  iOS_Final_Project
//
//  Created by Jasmine Muman on 2022-08-08.
//

import SwiftUI
import Firebase

@main
struct iOS_Final_ProjectApp: App {
    
    //@StateObject var recipesViewModel = RecipesViewModel()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            ContentView()
                //.environmentObject(recipesViewModel)
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        
        return true
    }
}
