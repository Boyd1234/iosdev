//
//  ArtworkView.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 10/12/2025.
//

import SwiftUI

struct ArtworkView: View {
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
            }
        }
    }
}

