//
//  lab5asyncApp.swift
//  lab5async
//
//  Created by Boyd Bulcaen on 05/11/2025.
//

import SwiftUI

@main
struct lab5asyncApp: App {
    @State var DataStore = UurroosterDataStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(DataStore)
        }
    }
}
