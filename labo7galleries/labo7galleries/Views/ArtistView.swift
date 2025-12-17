//
//  1A.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 10/12/2025.
//

import SwiftUI

struct ArtistView: View {
    @Environment(GalleryData.self) private var galleryData
    @Environment(PathStore.self) private var pathStore
    var artist : Artist
    var body: some View {
        VStack{
            Text(artist.name).font(.title).foregroundColor(.brown)
            Divider().overlay(.brown)
            
            Text(artist.nationality)
            Text(artist.style)
            Text(artist.description)
            Divider()
            Text("List of art")
            List(galleryData.getArtWorkForArtist(artist: artist)){ artwork in
                NavigationLink(value: Route.artworkDetail(artwork)){
                    VStack{
                        Text(artwork.title).foregroundColor(.brown)
                        Text(artwork.description)
                        Divider()
                    }
                }
            }
        }
    }
}
