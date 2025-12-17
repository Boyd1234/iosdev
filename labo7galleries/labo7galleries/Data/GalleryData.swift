//
//  GalleryData.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 09/12/2025.
//

import Foundation
@Observable
class GalleryData{
    private var galleries = [Gallery]()
    
    init(){
        
    }
    
    func getGalleries() -> [Gallery] {
        return galleries
    }
    
    func getArtistsForGallerie(gallery : Gallery) -> [Artist]{
        return gallery.artists.sorted(by: { $0.name < $1.name})
    }
    
    func getArtistForArtwork(artwork: Artwork) -> [Artist] {
        let artists = galleries.flatMap{ $0.artists} //alle artists opgehaald
        let art = artists.filter{
            artist in
            artist.artworks.contains(artwork)
        }
        return art
    }
    
//    func getArtworks() -> [Artwork]{
//        var artworks = galleries.flatMap{ $0.}
//    }
    
    func getArtWorkForArtist(artist: Artist) -> [Artwork]{
        return artist.artworks.sorted(by: {$0.id < $1.id})
    }
    
    func loadData() async {
        do{
            print("simulating 2 second load delay")
            try await Task.sleep(for: .seconds(2))
            let root : Galleries =  load("galleries.json")
            galleries = root.galleries
            
            print("data loaded successfully")
        } catch {
            print("failed to load galleries:", error)
            galleries = []
        }
    }
}
