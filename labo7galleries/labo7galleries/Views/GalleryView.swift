//
//  GalleryView.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 09/12/2025.
//

import SwiftUI

struct GalleryView: View {
    @Environment(GalleryData.self) var galleryData
    @Binding var selectedGallery : Gallery?
    
    var body: some View {
            VStack{
                //id moet voor selection, anders werkt het niet
                List(galleryData.getGalleries(), id:\.self, selection: $selectedGallery) { gallery in
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
