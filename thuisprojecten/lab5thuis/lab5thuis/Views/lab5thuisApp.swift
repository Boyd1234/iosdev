//
//  lab5thuisApp.swift
//  lab5thuis
//
//  Created by boyd on 08/11/2025.
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
