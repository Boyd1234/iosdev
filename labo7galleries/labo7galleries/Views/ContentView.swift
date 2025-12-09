//
//  ContentView.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 09/12/2025.
//

import SwiftUI

struct ContentView: View {
    @State var selectedGallery : Gallery
    @Environment(GalleryData.self) var galleryData : GalleryData
    var body: some View {
        TabView{
            Tab("Galleries", systemImage: "heart.fill"){
                GalleryView(selectedGallery: $selectedGallery)
            }
        }
        .padding()
    }
}
