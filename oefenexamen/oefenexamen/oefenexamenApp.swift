//
//  oefenexamenApp.swift
//  oefenexamen
//
//  Created by Boyd Bulcaen on 17/12/2025.
//

import SwiftUI

@main
struct oefenexamenApp: App {
    @State var dataManager = DataManager()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataManager).environment(pathStore)
        }
    }
}
