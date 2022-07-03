//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Evgeniy Safin on 02.07.2022.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 */

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView {
                ListView()
            }
            // Adapting to Landscape mode
            .navigationViewStyle(StackNavigationViewStyle())
            //
            .environmentObject(listViewModel)
        }
    }
}
