//
//  labo6moviesApp.swift
//  labo6movies
//
//  Created by Boyd Bulcaen on 19/11/2025.
//

import SwiftUI

@main
struct labo6moviesApp: App {
    @State var movieStore = MovieDataStore()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(movieStore).environment(pathStore)
        }
    }
}
