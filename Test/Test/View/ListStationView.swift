//
//  ListStationView.swift
//  Test
//
//  Created by Boyd on 16/10/2025.
//

import SwiftUI

struct ListStationView: View {
    let stadions = Environment.getAllStadions(from: wkResults)
    @Binding var selectedStadion: String?
    var body: some View {
        List(stadions, id: \.self){ stadion in
            Text(stadion)
                .foregroundColor(stadion == selectedStadion ? .red : .primary)
                .onTapGesture {
                    selectedStadion = stadion
                    
                }
        }
        
    }
}
