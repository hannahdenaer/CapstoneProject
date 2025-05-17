//
//  CapstoneProjectApp.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI
import SwiftData

@main
struct CapstoneProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: WantToReadItem.self)
                .modelContainer(for: AlreadyReadItem.self)
        }
    }
}
