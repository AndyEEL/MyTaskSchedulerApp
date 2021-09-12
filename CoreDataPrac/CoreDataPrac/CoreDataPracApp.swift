//
//  CoreDataPracApp.swift
//  CoreDataPrac
//
//  Created by 이동건 on 2021/09/12.
//

import SwiftUI

@main
struct CoreDataPracApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
