//
//  GalleryView.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 09/12/2025.
//

import SwiftUI

struct GalleryView: View {
    @Environment(GalleryData.self) private var galleryData
    @Binding var selectedGallery : Gallery
    @State var loading = true;
    
    var body: some View {
        
        if loading{
            ProgressView("loading")
                .task {
                    await galleryData.loadData()
                    loading = false;
                }
        } else {
            
            
            VStack{
                List(galleryData.getGalleries(), selection: $selectedGallery) { gallery in
                    VStack{
                        Text(gallery.name)
                            .font(.title)
                            .foregroundColor(.brown)
                        Text(gallery.location)
                        Text(gallery.description)
                        Divider()
                    }
                }
            }
        }
    }
}
