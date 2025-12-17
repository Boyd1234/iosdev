//
//  labo7galleriesApp.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 09/12/2025.
//

import SwiftUI

@main
struct labo7galleriesApp: App {
    @State var galleryStore = GalleryData()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(galleryStore).environment(pathStore)
        }
    }
}
