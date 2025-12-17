//
//  ContentView.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 09/12/2025.
//

import SwiftUI

struct ContentView: View {
    @State var selectedGallery : Gallery? = nil
    @Environment(GalleryData.self) var galleryData : GalleryData
    @State var loading = true;

    var body: some View {
        if loading{
            ProgressView("loading")
                .task {
                    await galleryData.loadData()
                    loading = false;
                }
        } else {
            
            TabView{
                Tab("Galleries", systemImage: "heart.fill"){
                    GalleryView(selectedGallery: $selectedGallery)
                }
                Tab(selectedGallery?.name ?? "No gallery", systemImage: "heart.fill"){
                    GalleryDetailView(selectedGallery: selectedGallery)
                }
                
            }
        }}
}
