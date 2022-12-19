//
//  FavFoodsApp.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/19/22.
//

import SwiftUI

@main
struct FavFoodsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
