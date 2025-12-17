//
//  ArtworkView.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 10/12/2025.
//

import SwiftUI

struct ArtworkView: View {
    @Environment(GalleryData.self) private var galleryData
    @Environment(PathStore.self) private var pathStore
    var artwork : Artwork
    var body: some View {
        VStack{
            Text(artwork.title).font(.title).foregroundColor(.brown)
            Divider().overlay(.brown)
            Text(artwork.medium)
            Text(artwork.dimensions)
            Text(artwork.description)
            
            Divider().overlay(.brown)
            HStack{
                Text("arist:")
                List(galleryData.getArtistForArtwork(artwork: artwork), id:\.self){ artist in
                    NavigationLink(value: Route.artistDetail(artist)){
                        Text(artist.name).foregroundColor(.brown)
                    }
                }
                Divider().overlay(.brown)
            }
        }
    }
}

