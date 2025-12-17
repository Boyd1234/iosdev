//
//  GalleryDetailView.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 10/12/2025.
//

import SwiftUI
struct GalleryDetailView: View {
    var selectedGallery : Gallery?
    @Environment(GalleryData.self) private var galleryData
    @Environment(PathStore.self) private var pathStore
    
    var body: some View {
        //BINDABLE NIET VERGETEN ANDERS WERKT JE PATHSTORE NIET
        @Bindable var pathStore = pathStore
        
        NavigationStack(path: $pathStore.path){
            //oplossing voor probleem dat het moet geunwrapped worden.
            if let gallery = selectedGallery{
                VStack{
                    Text(gallery.name).font(.title).foregroundColor(.brown)
                    Divider().foregroundColor(.brown)
                    Text(gallery.location)
                    Text(gallery.description)
                    
                    Divider().overlay(.brown)
                    
                    Text("List of artists").font(.title3)
                    
                    //GEEN ID VERGETEN, ANDERS WERKT JE VALUE NIET (hier niet, maar nogst niet vergeten)
                    List(galleryData.getArtistsForGallerie(gallery: gallery)) { artist in
                        NavigationLink(value: Route.artistDetail(artist)){
                            VStack{
                                Text(artist.name).font(.title3).foregroundColor(.brown)
                                Text(artist.nationality)
                                Divider().overlay(.brown)
                        }

                        
                        }
                    }
                }
                .navigationDestination(for: Route.self){ route in
                    switch route {
                    case let .artistDetail(artist):
                        ArtistView(artist: artist)
                    case let .artworkDetail(artwork):
                        ArtworkView(artwork: artwork)
                    }
                }
            }
        }

    }
}
