//
//  CoreDataBootcamp_14App.swift
//  CoreDataBootcamp#14
//
//  Created by Evgeniy Safin on 17.07.2022.
//

import SwiftUI

@main
struct CoreDataBootcamp_14App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
